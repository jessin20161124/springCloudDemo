package com.jessin.practice.spring.cloud.provider.mapper;

import com.jessin.practice.spring.cloud.provider.bo.UserQueryCondition;
import com.jessin.practice.spring.cloud.provider.entity.UserDO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 有了@Mapper，就不需要用@MapperScan了
 * @Author: jessinguo
 * @Date: 2021/10/24 2:26 PM
 */
@Mapper
public interface UserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UserDO record);

    int insertSelective(UserDO record);

    List<UserDO> queryUser(UserQueryCondition userQueryCondition);

    UserDO selectByPrimaryKey(Long id);

    int updateByConditionSelective(@Param("changeItem") UserDO record, @Param("condition") UserDO condition);

    int updateByPrimaryKey(UserDO record);
}