package com.jessin.practice.spring.cloud.provider.application.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jessin.practice.spring.cloud.api.dto.OrderMsg;
import com.jessin.practice.spring.cloud.api.dto.OrderOperationTypeEnum;
import com.jessin.practice.spring.cloud.api.dto.UserMsg;
import com.jessin.practice.spring.cloud.api.dto.req.UserUpdateReq;
import com.jessin.practice.spring.cloud.common.PageResult;
import com.jessin.practice.spring.cloud.api.dto.resp.UserDTO;
import com.jessin.practice.spring.cloud.api.dto.resp.UserStatisticDTO;
import com.jessin.practice.spring.cloud.common.IdGenerator;
import com.jessin.practice.spring.cloud.common.ListUtils;
import com.jessin.practice.spring.cloud.common.RandomIdGenerator;
import com.jessin.practice.spring.cloud.provider.domain.UserDomainService;
import com.jessin.practice.spring.cloud.provider.domain.bo.UserQueryCondition;
import com.jessin.practice.spring.cloud.provider.domain.constant.common;
import com.jessin.practice.spring.cloud.provider.domain.converter.OrderTransformer;
import com.jessin.practice.spring.cloud.provider.domain.entity.OrderDO;
import com.jessin.practice.spring.cloud.provider.domain.entity.UserDO;
import com.jessin.practice.spring.cloud.provider.infrastructure.mapper.UserMapper;
import com.jessin.practice.spring.cloud.provider.application.UserService;
import com.jessin.practice.spring.cloud.provider.infrastructure.mq.RocketMqHelper;
import com.mongodb.client.result.UpdateResult;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.rocketmq.client.producer.LocalTransactionState;
import org.apache.rocketmq.client.producer.TransactionSendResult;
import org.springframework.beans.BeanUtils;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.aggregation.Aggregation;
import org.springframework.data.mongodb.core.aggregation.AggregationResults;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.messaging.support.MessageBuilder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.TransactionSynchronizationAdapter;
import org.springframework.transaction.support.TransactionSynchronizationManager;

import javax.annotation.Resource;
import java.util.*;
import java.util.function.Function;

/**
 *
 * 双写可以抽取个代理
 * @Author: jessinguo
 * @Date: 2021/10/24 2:32 PM
 */
@Service
@Slf4j
public class UserServiceImpl implements UserService {

    // 用随机数，避免冲突，雪花算法最后12bit在并发低的情况下是0
    private final static IdGenerator idGenerator = new RandomIdGenerator();

    @Resource
    private UserMapper userMapper;

    @Resource
    private RocketMqHelper rocketMqHelper;

    @Resource
    private UserDomainService userDomainService;

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

            if (Objects.nonNull(userQueryCondition.getId())) {
                // mongodb _id的类型可以自定义，如果不传递，默认是ObjectId类型
                // 如果传递了数字，则是数字类型，这里查不出来，必须改为userQueryCondition.getId为long
                query.addCriteria(Criteria.where("_id").is(userQueryCondition.getId()));
            }

            if (StringUtils.isNotBlank(userQueryCondition.getName())) {
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
        List<UserDTO> userDTOS = ListUtils.transformBeanList(userDOList, UserDTO.class);
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
        if (Objects.nonNull(userQueryCondition.getId())) {
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
        // inputType UserDO表示使用这个作为collection，outputType表示使用UserStatisticDTO作为输出结果反序列化
        AggregationResults<UserStatisticDTO> res = mongoTemplate.aggregate(aggregation, UserDO.class, UserStatisticDTO.class);

        log.info("agg res {}", res.getMappedResults());
        return res.getMappedResults();
    }

    /**
     * 按理这里应该传递BO
     * 事务消息：https://blog.csdn.net/weixin_44606481/article/details/129903032
     * @param userDTO
     * @return
     */
    public boolean insert(UserDTO userDTO) {

        UserDO userDO = new UserDO();
        BeanUtils.copyProperties(userDTO, userDO);
        // 不要使用数据库的自增id，这里自己生成一个，方便后续分库分表和迁移，保证全局不冲突
        userDO.setUserId(idGenerator.nextId());
        // 时间在代码中生成，方便后续同步到其他模块，例如mongodb
        userDO.setCreateTime(new Date());
        userDO.setLastModifiedTime(new Date());

        // 这里不会有数据库生成的自增id，因为还没有执行
        UserMsg userMsg = new UserMsg();
        // 构建事务消息第三个参数，这里以Function函数为例 可以解决事务消息id回传问题，也可以自定义一个事务id写入消息体中
        BeanUtils.copyProperties(userDO, userMsg);

        Function function = new Function<String,Boolean>(){
            @Override
            public Boolean apply(String transactionId) {
                boolean execute = userDomainService.insert(userDO);
                return execute;
            }
        };

        // todo 事务消息不支持有序？
        // 发送prepare消息（暂时保存在临时事务topic=RMQ_SYS_TRANS_HALF_TOPIC中，此时不能消费），执行本地事务listener，最后再发送这条消息commit（存到真正的topic中，可以消费到）
        // 发送事务消息:采用的是sendMessageInTransaction方法，返回结果为TransactionSendResult对象，该对象中包含了事务发送的状态、本地事务执行的状态等
        TransactionSendResult result = rocketMqHelper.sendMessageInTransaction("USER_ADD", MessageBuilder.withPayload(userMsg)
                .setHeader(common.TRANSACTION_ID, idGenerator.nextId()).build(), function);
        // 事务消息提交状态
        String localTransactionState = result.getLocalTransactionState().name();
        // 如果消息被回滚代表业务执行异常本地事务提交失败
        if (LocalTransactionState.ROLLBACK_MESSAGE.name().equals(localTransactionState)) {
            log.info("发送事务消息失败 transactionId={} localTransactionState={} ", result.getTransactionId(), localTransactionState);
            return false;
        }
        log.info("发送事务消息成功 transactionId={} localTransactionState={} ", result.getTransactionId(), localTransactionState);

        return true;
    }

    /**
     * 这里按理应该使用BO，但是如果没有太复杂的结构，可以直接使用DTO
     * todo 注意防止数据库成功了，mongo失败了的情况；这里还可能发生数据库失败了，mongo成功了
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
        if (Objects.nonNull(userQueryCondition.getId())) {
            // mongodb _id是主键，其类型可以自定义，如果不传递，默认是ObjectId类型
            // 如果传递了数字，则是数字类型，这里查不出来，必须改为userQueryCondition.getId为long
            query.addCriteria(Criteria.where("_id").is(userQueryCondition.getId()));
        }
        if (StringUtils.isNotBlank(userQueryCondition.getName())) {
            query.addCriteria(Criteria.where("name").is(userQueryCondition.getName()));
        }
        if (Objects.nonNull(userQueryCondition.getAge())) {
            query.addCriteria(Criteria.where("age").is(userQueryCondition.getAge()));
        }

        Update update = new Update();
        UserUpdateReq.ChangeItem changeItem = userUpdateReq.getChangeItem();
        if (StringUtils.isNotBlank(changeItem.getName())) {
            update.set("name", changeItem.getName());
        }
        if (Objects.nonNull(changeItem.getAge())) {
            update.set("age", changeItem.getAge());
        }
        if (Objects.nonNull(changeItem.getNote())) {
            update.set("note", changeItem.getNote());
        }
        update.set("lastModifiedTime", new Date());
        UpdateResult updateResult = mongoTemplate.updateMulti(query, update, UserDO.class);
        log.info("update mongo : {} res: {}", userUpdateReq, updateResult);
    }
}
