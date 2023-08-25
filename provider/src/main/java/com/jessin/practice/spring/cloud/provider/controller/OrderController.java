package com.jessin.practice.spring.cloud.provider.controller;


import com.jessin.practice.spring.cloud.api.HttpResult;
import com.jessin.practice.spring.cloud.api.dto.req.CreateOrderReq;
import com.jessin.practice.spring.cloud.api.dto.req.OrderQueryCondition;
import com.jessin.practice.spring.cloud.api.dto.resp.CreateOrderResp;
import com.jessin.practice.spring.cloud.api.dto.resp.OrderDTO;
import com.jessin.practice.spring.cloud.provider.bo.OrderBO;
import com.jessin.practice.spring.cloud.provider.service.OrderService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.Optional;

/**
 * todo 前端流量和业务后端的流量都是通过这里
 * todo 异常处理器
 */
@RestController
@Slf4j
public class OrderController {
    @Resource
    private OrderService orderService;

    /**
     * 返回值最好要复杂数据结构，以遍后续扩展
     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"storeId":123, "goodsIdList":[{"goodId":"g122","cartItemId": "cart1", "quantity": "1234"}]}' "http://localhost:9999/createOrder"
     * @param createOrderReq
     * @return
     */
    @PostMapping("/createOrder")
    public HttpResult<CreateOrderResp> createOrder(@Validated @RequestBody CreateOrderReq createOrderReq) {
        // todo 抽取聚合层或者领域服务层，这两个有什么区别？聚合层是多个领域服务的聚合，通过聚合根进行访问？
        String orderNo = orderService.createOrder(createOrderReq);
        log.info("插入订单：{}，结果为：{}", createOrderReq, orderNo);
        CreateOrderResp createOrderResp = new CreateOrderResp();
        createOrderResp.setOrderNo(orderNo);
        return HttpResult.success(createOrderResp);
    }

    /**
     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"orderNo":7100765053793131088}' "http://localhost:9999/queryOrder"
     * 注意，注解均需要再写一遍
     * @param orderQueryCondition
     * @return
     */
    @PostMapping("/queryOrder")
    public HttpResult<OrderDTO> queryOrder(@RequestBody OrderQueryCondition orderQueryCondition) {
        log.info("provider 实现，orderQueryCondition is {}", orderQueryCondition);
        Optional<OrderBO> orderBOOptional = orderService.selectOrder(orderQueryCondition.getOrderNo());
        log.debug("查询orderQueryCondition {} 对应订单 {}", orderQueryCondition, orderBOOptional);
        return HttpResult.success(orderBOOptional.map(orderBO -> {
            // 这种代码，更适合放在聚合层里，而且需要支持按需查询，不是所有字段都需要
            OrderDTO orderDTO = new OrderDTO();
            // 名字相同类型不一样，不会自动copy
            BeanUtils.copyProperties(orderBO, orderDTO);
            orderDTO.setOrderNo(String.valueOf(orderBO.getOrderNo()));
            orderDTO.setOrderStatusDesc("支付中");
            orderDTO.setStoreName("men");
            return orderDTO;
        }).orElse(null));
    }
}
