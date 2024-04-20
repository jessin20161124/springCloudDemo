package com.jessin.practice.spring.cloud.provider.domain;

import com.jessin.practice.spring.cloud.api.dto.req.UserUpdateReq;
import com.jessin.practice.spring.cloud.api.dto.resp.UserDTO;
import com.jessin.practice.spring.cloud.common.IdGenerator;
import com.jessin.practice.spring.cloud.common.RandomIdGenerator;
import com.jessin.practice.spring.cloud.provider.domain.entity.UserDO;
import com.jessin.practice.spring.cloud.provider.infrastructure.mapper.UserMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;


@Service
@Slf4j
public class UserDomainService {
    // 用随机数，避免冲突，雪花算法最后12bit在并发低的情况下是0
    private final static IdGenerator idGenerator = new RandomIdGenerator();

    @Resource
    private UserMapper userMapper;

    /**
     * 按理这里应该传递BO
     * @param userDO
     * @return
     */
    public boolean insert(UserDO userDO) {
        boolean dbRes = userMapper.insertSelective(userDO) == 1;
        if (!dbRes) {
            return false;
        }
        return true;
    }

    /**
     * 这里按理应该使用BO，但是如果没有太复杂的结构，可以直接使用DTO
     * todo 注意防止数据库成功了，mongo失败了的情况
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
        log.info("更新userUpdateReq：{}，返回：{}", userUpdateReq, res);
        return res;
    }
}
