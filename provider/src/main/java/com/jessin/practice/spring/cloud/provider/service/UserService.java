package com.jessin.practice.spring.cloud.provider.service;

import com.jessin.practice.spring.cloud.api.dto.req.UserQueryCondition;
import com.jessin.practice.spring.cloud.api.dto.resp.UserDTO;
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

    public List<UserDTO> queryUser(UserQueryCondition userQueryCondition) {
        List<UserDTO> userDTOList = userMapper.queryUser(userQueryCondition);
        log.info("查询userQueryCondition：{}，返回：{}", userQueryCondition, userDTOList);
        return userDTOList;
    }

    public boolean insert(UserDTO userDTO) {
        return userMapper.insertSelective(userDTO) == 1;
    }
}
