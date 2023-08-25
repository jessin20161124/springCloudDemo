package com.jessin.practice.spring.cloud.provider.mapper;

import com.jessin.practice.spring.cloud.provider.entity.OrderDO;
import com.jessin.practice.spring.cloud.provider.entity.OrderDOExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OrderDOMapper {
    int deleteByPrimaryKey(Long id);

    int insert(OrderDO record);

    int insertSelective(OrderDO record);

    List<OrderDO> selectByExample(OrderDOExample example);

    int updateByExampleSelective(@Param("record") OrderDO record, @Param("example") OrderDOExample example);

    int updateByExample(@Param("record") OrderDO record, @Param("example") OrderDOExample example);
}