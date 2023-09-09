package com.jessin.practice.spring.cloud.provider.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jessin.practice.spring.cloud.api.dto.req.UserUpdateReq;
import com.jessin.practice.spring.cloud.api.dto.resp.PageResult;
import com.jessin.practice.spring.cloud.api.dto.resp.UserDTO;
import com.jessin.practice.spring.cloud.api.dto.resp.UserStatisticDTO;
import com.jessin.practice.spring.cloud.common.IdGenerator;
import com.jessin.practice.spring.cloud.common.RandomIdGenerator;
import com.jessin.practice.spring.cloud.provider.bo.UserQueryCondition;
import com.jessin.practice.spring.cloud.provider.entity.UserDO;
import com.jessin.practice.spring.cloud.provider.mapper.UserMapper;
import com.mongodb.client.result.UpdateResult;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.aggregation.Aggregation;
import org.springframework.data.mongodb.core.aggregation.AggregationResults;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

/**
 *
 * 双写可以抽取个代理
 * @Author: jessinguo
 * @Date: 2021/10/24 2:32 PM
 */
@Service
@Slf4j
public class UserService {

    // 用随机数，避免冲突，雪花算法最后12bit在并发低的情况下是0
    private final static IdGenerator idGenerator = new RandomIdGenerator();

    @Resource
    private UserMapper userMapper;

    @Resource
    private MongoTemplate mongoTemplate;

    public PageResult<List<UserDTO>> queryUser(UserQueryCondition userQueryCondition) {

        List<UserDO> userDOList = Collections.emptyList();
        long totalCnt;
        if (userQueryCondition.isUseMongo()) {
            Query query = new Query();
            // 一个字段的类型，最好固定
            // mongodb _id的类型可以自定义，如果不传递，创建时默认是ObjectId类型
            // 如果传递了数字，则是数字类型，这里查不出来，必须改为userQueryCondition.getId为long

            if (userQueryCondition.getId() != null) {
                // mongodb _id的类型可以自定义，如果不传递，默认是ObjectId类型
                // 如果传递了数字，则是数字类型，这里查不出来，必须改为userQueryCondition.getId为long
                query.addCriteria(Criteria.where("_id").is(userQueryCondition.getId()));
            }

            if (userQueryCondition.getName() != null) {
                query.addCriteria(Criteria.where("name").is(userQueryCondition.getName()));
            }
            totalCnt = mongoTemplate.count(query, UserDO.class);
            if (totalCnt > 0) {
                // 自动按照UserDO指定的collection name查找，并根据fieldName序列化数据
                query.with(Sort.by(Sort.Order.asc("age")));
                query.limit(userQueryCondition.getPageSize()).skip(userQueryCondition.getOffset());
                userDOList = mongoTemplate.find(query, UserDO.class);
            }
        } else {
            // 设置分页信息
            PageHelper.startPage(userQueryCondition.getPageNo(), userQueryCondition.getPageSize());
            userDOList = userMapper.queryUser(userQueryCondition);
            PageInfo pageInfo=new PageInfo(userDOList);
            totalCnt = pageInfo.getTotal();
        }
        log.info("查询userQueryCondition：{}，返回：{}", userQueryCondition, userDOList);
        //  这里按理应该返回BO，但是如果没有太复杂的结构，可以直接使用DTO
        List<UserDTO> userDTOS = userDOList.stream().map(userDO -> {
            UserDTO userDTO = new UserDTO();
            BeanUtils.copyProperties(userDO, userDTO);
            return userDTO;
        }).collect(Collectors.toList());
        return new PageResult<>(userDTOS, totalCnt,
                userQueryCondition.getPageNo(), userQueryCondition.getPageSize());
    }

    /**
     * https://blog.csdn.net/jyblims/article/details/112375264
     *
     * select name as _id, count(*)  nameCnt, sum(age) as ageSum from user
     * where age >= 18 and (name = 'abc' or name = 'def')
     * group by name limit 1, offset 1
     * @param userQueryCondition
     * @return
     */
    public List<UserStatisticDTO> statisticUser(UserQueryCondition userQueryCondition) {
        Criteria criteria = new Criteria();
        if (userQueryCondition.getId() != null) {
            criteria.andOperator(Criteria.where("_id").is(userQueryCondition.getId()));
        }

        if (StringUtils.isNotBlank(userQueryCondition.getName())) {
            criteria.andOperator(Criteria.where("name").is(userQueryCondition.getName()));
        }
        // todo 只能有一个group?
        Aggregation aggregation = Aggregation.newAggregation(
                Aggregation.match(criteria),
                // 或者用max
                Aggregation.group("name").count().as("nameCnt").sum("age").as("ageSum"),
                Aggregation.skip(userQueryCondition.getOffset()),
                Aggregation.limit(userQueryCondition.getPageSize())
        ).withOptions(Aggregation.newAggregationOptions().allowDiskUse(true).build());
        AggregationResults<UserStatisticDTO> res = mongoTemplate.aggregate(aggregation, UserDO.class, UserStatisticDTO.class);

        log.info("agg res {}", res.getMappedResults());
        return res.getMappedResults();
    }

    /**
     * 按理这里应该传递BO
     * @param userDTO
     * @return
     */
    public boolean insert(UserDTO userDTO) {
        UserDO userDO = new UserDO();
        BeanUtils.copyProperties(userDTO, userDO);
        // 不要使用数据库的自增id，这里自己生成一个，方便后续分库分表和迁移
        userDO.setUserId(idGenerator.nextId());
        // 时间在代码中生成，方便后续同步到其他模块，例如mongodb
        userDO.setCreateTime(new Date());
        userDO.setLastModifiedTime(new Date());
        boolean dbRes = userMapper.insertSelective(userDO) == 1;
        if (!dbRes) {
            return false;
        }
        syncUserToMongo(userDO);
        return true;
    }

    private void syncUserToMongo(UserDO userDO) {
//        mongoTemplate.save(user); // _id存在时会把旧数据进行覆盖；
        mongoTemplate.insert(userDO); // _id存在时会提示主键重复的异常；
    }

    /**
     * 这里按理应该使用BO，但是如果没有太复杂的结构，可以直接使用DTO
     * @param userUpdateReq
     * @return
     */
    @Transactional
    public long updateUser(UserUpdateReq userUpdateReq) {
        UserDO changeItem = new UserDO();
        BeanUtils.copyProperties(userUpdateReq.getChangeItem(), changeItem);
        changeItem.setLastModifiedTime(new Date());
        UserDO condition = new UserDO();
        BeanUtils.copyProperties(userUpdateReq.getCondition(), condition);

        long res = userMapper.updateByConditionSelective(changeItem, condition);
        updateMongo(userUpdateReq);
        log.info("更新userUpdateReq：{}，返回：{}", userUpdateReq, res);
        return res;
    }

    private void updateMongo(UserUpdateReq userUpdateReq) {
        Query query = new Query();
        UserUpdateReq.Condition userQueryCondition = userUpdateReq.getCondition();
        if (userQueryCondition.getId() != null) {
            // mongodb _id是主键，其类型可以自定义，如果不传递，默认是ObjectId类型
            // 如果传递了数字，则是数字类型，这里查不出来，必须改为userQueryCondition.getId为long
            query.addCriteria(Criteria.where("_id").is(userQueryCondition.getId()));
        }
        if (userQueryCondition.getName() != null) {
            query.addCriteria(Criteria.where("name").is(userQueryCondition.getName()));
        }
        if (userQueryCondition.getAge() != null) {
            query.addCriteria(Criteria.where("age").is(userQueryCondition.getAge()));
        }

        Update update = new Update();
        UserUpdateReq.ChangeItem changeItem = userUpdateReq.getChangeItem();
        if (changeItem.getName() != null) {
            update.set("name", changeItem.getName());
        }
        if (changeItem.getAge() != null) {
            update.set("age", changeItem.getAge());
        }
        if (changeItem.getNote() != null) {
            update.set("note", changeItem.getNote());
        }
        update.set("lastModifiedTime", new Date());
        UpdateResult updateResult = mongoTemplate.updateMulti(query, update, UserDO.class);
        log.info("update mongo : {} res: {}", userUpdateReq, updateResult);
    }
}
