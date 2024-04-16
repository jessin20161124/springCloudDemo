package com.jessin.practice.spring.cloud.provider.domain.converter;

import com.jessin.practice.spring.cloud.api.dto.OrderMsg;
import com.jessin.practice.spring.cloud.api.dto.resp.OrderDTO;
import com.jessin.practice.spring.cloud.provider.domain.bo.OrderBO;
import com.jessin.practice.spring.cloud.provider.domain.entity.OrderDO;
import lombok.experimental.UtilityClass;
import org.springframework.beans.BeanUtils;

/**
 * 胶水代码，防止腐化，统一抽取到converter工具类中
 */
@UtilityClass
public class OrderTransformer {

    public static OrderDTO convert(OrderBO orderBO) {
        // 这种代码，更适合放在聚合层里，而且需要支持按需查询，不是所有字段都需要
        OrderDTO orderDTO = new OrderDTO();
        // 名字相同类型不一样，不会自动copy
        BeanUtils.copyProperties(orderBO, orderDTO);
        orderDTO.setOrderNo(String.valueOf(orderBO.getOrderNo()));
        // DTO会多一些额外的字段
        orderDTO.setOrderStatusDesc("支付中");
        orderDTO.setStoreName("men");
        return orderDTO;
    }

    public static OrderMsg convert(OrderDO orderDO) {
        // 这种代码，更适合放在聚合层里，而且需要支持按需查询，不是所有字段都需要
        OrderMsg orderMsg = new OrderMsg();
        // 名字相同类型不一样，不会自动copy
        BeanUtils.copyProperties(orderDO, orderMsg);
        orderMsg.setOrderNo(String.valueOf(orderDO.getOrderNo()));
        // DTO会多一些额外的字段
        return orderMsg;
    }

    public static OrderDO convert(OrderMsg orderMsg) {
        // 这种代码，更适合放在聚合层里，而且需要支持按需查询，不是所有字段都需要
        OrderDO orderDO = new OrderDO();
        // 名字相同类型不一样，不会自动copy
        BeanUtils.copyProperties(orderMsg, orderDO);
        orderDO.setOrderNo(Long.valueOf(orderMsg.getOrderNo()));
        // DTO会多一些额外的字段
        return orderDO;
    }

}
