package com.jessin.practice.spring.cloud.provider.service;

import com.jessin.practice.spring.cloud.api.dto.req.UserUpdateReq;
import com.jessin.practice.spring.cloud.common.PageResult;
import com.jessin.practice.spring.cloud.api.dto.resp.UserDTO;
import com.jessin.practice.spring.cloud.api.dto.resp.UserStatisticDTO;
import com.jessin.practice.spring.cloud.provider.bo.UserQueryCondition;

import java.util.List;

public interface UserService {

    PageResult<List<UserDTO>> queryUser(UserQueryCondition userQueryCondition);

    List<UserStatisticDTO> statisticUser(UserQueryCondition userQueryCondition);

    boolean insert(UserDTO userDTO);

    long updateUser(UserUpdateReq userUpdateReq);
}
