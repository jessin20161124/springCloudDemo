package com.jessin.practice.spring.cloud.provider.mapper;

import com.jessin.practice.spring.cloud.api.dto.req.UserQueryCondition;
import com.jessin.practice.spring.cloud.api.dto.UserDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 有了@Mapper，就不需要用@MapperScan了
 * @Author: jessinguo
 * @Date: 2021/10/24 2:26 PM
 */
@Mapper
public interface UserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UserDTO record);

    int insertSelective(UserDTO record);

    List<UserDTO> queryUser(UserQueryCondition userQueryCondition);

    UserDTO selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UserDTO record);

    int updateByPrimaryKey(UserDTO record);
}