package com.jessin.practice.spring.cloud.provider.service;

import com.jessin.practice.spring.cloud.api.UserQueryCondition;
import com.jessin.practice.spring.cloud.api.model.User;
import com.jessin.practice.spring.cloud.provider.mapper.UserMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author: jessinguo
 * @Date: 2021/10/24 2:32 PM
 */
@Service
@Slf4j
public class UserService {

    @Resource
    private UserMapper userMapper;

    public List<User> queryUser(UserQueryCondition userQueryCondition) {
        List<User> userList = userMapper.queryUser(userQueryCondition);
        log.info("查询userQueryCondition：{}，返回：{}", userQueryCondition, userList);
        return userList;
    }

    public boolean insert(User user) {
        return userMapper.insertSelective(user) == 1;
    }
}
