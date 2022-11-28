package com.jessin.practice.spring.cloud.provider.mapper;

import com.jessin.practice.spring.cloud.api.UserQueryCondition;
import com.jessin.practice.spring.cloud.api.model.User;
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

    int insert(User record);

    int insertSelective(User record);

    List<User> queryUser(UserQueryCondition userQueryCondition);

    User selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}