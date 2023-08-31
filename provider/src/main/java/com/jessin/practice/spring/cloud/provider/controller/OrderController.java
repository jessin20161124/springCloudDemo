package com.jessin.practice.spring.cloud.provider.controller;


import com.jessin.practice.spring.cloud.api.dto.resp.*;
import com.jessin.practice.spring.cloud.api.dto.req.CreateOrderReq;
import com.jessin.practice.spring.cloud.api.dto.req.OrderQueryCondition;
import com.jessin.practice.spring.cloud.provider.bo.OrderBO;
import com.jessin.practice.spring.cloud.provider.bo.OrderStatisticBO;
import com.jessin.practice.spring.cloud.provider.service.OrderService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * todo 前端流量和业务后端的流量都是通过这里
 * todo 异常处理器
 * todo es/redis/db等操作下层到infrastructure这一层，并提供通用接口，同时提供防腐层，定义通用的maven插件模版
 */
@RestController
@Slf4j
public class OrderController {
    @Resource
    private OrderService orderService;

    /**
     * 返回值最好要复杂数据结构，以遍后续扩展
     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"storeId":131, "remark":"hello world","cancelReason":"hellow","goodsIdList":[{"goodId":"g122","cartItemId": "cart1", "quantity": "1234"}]}' "http://localhost:9999/createOrder"
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
            // DTO会多一些额外的字段
            orderDTO.setOrderStatusDesc("支付中");
            orderDTO.setStoreName("men");
            return orderDTO;
        }).orElse(null));
    }

    /**
     curl -X POST -H "content-type: application/json;charset=utf-8"  "http://localhost:9999/cancelOrder?orderNo=7102593396078835370"
     * 注意，注解均需要再写一遍
     * @param orderNo
     * @return
     */
    @PostMapping("/cancelOrder")
    public HttpResult<Boolean> cancelOrder(@RequestParam String orderNo) {
        log.info("provider 实现，cancelOrder is {}", orderNo);
        boolean result = orderService.cancelOrder(orderNo);
        log.debug("取消订单 {} 结果为 {}", orderNo, result);
        return HttpResult.success(result);
    }

    /**
     *
     * todo 封装分页DTO，适配前端分页组件
     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"orderNo":7100765053793131088}' "http://localhost:9999/searchOrder"
     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"uid":123}' "http://localhost:9999/searchOrder"

     分词字段精准搜索：
     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"remark":"我是阿里"}' "http://localhost:9999/searchOrder"

     分词字段搜索：
     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"remarkLike":"world hello"}' "http://localhost:9999/searchOrder"

     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"createTimeBegin":"2023-08-29 21:32:34", "pageNo":1, "pageSize":10}' "http://localhost:9999/searchOrder"
     * 注意，注解均需要再写一遍
     * @param orderQueryCondition
     * @return
     */
    @PostMapping("/searchOrder")
    public HttpResult<List<OrderDTO>> searchOrder(@Valid @RequestBody OrderQueryCondition orderQueryCondition) {
        log.info("provider 实现，orderQueryCondition is {}", orderQueryCondition);
        List<OrderBO> orderBOList = orderService.searchOrder(orderQueryCondition);
        // 条数，其实本身已经有了
        orderService.countOrder(orderQueryCondition);

        log.debug("查询orderQueryCondition {} 对应订单 {}", orderQueryCondition, orderBOList);
        return HttpResult.success(orderBOList.stream().map(orderBO -> {
            // 这种代码，更适合放在聚合层里，而且需要支持按需查询，不是所有字段都需要
            OrderDTO orderDTO = new OrderDTO();
            // 名字相同类型不一样，不会自动copy
            BeanUtils.copyProperties(orderBO, orderDTO);
            orderDTO.setOrderNo(String.valueOf(orderBO.getOrderNo()));
            orderDTO.setOrderStatusDesc("支付中");
            orderDTO.setStoreName("men");
            return orderDTO;
        }).collect(Collectors.toList()));
    }

    /**
     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"orderNo":7100765053793131088}' "http://localhost:9999/scrollOrder"
     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"uid":123}' "http://localhost:9999/scrollOrder"

     分词字段精准搜索：
     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"remark":"我是阿里"}' "http://localhost:9999/scrollOrder"

     分词字段搜索：
     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"remarkLike":"world hello"}' "http://localhost:9999/scrollOrder"

     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"createTimeBegin":"2023-08-29 21:32:34", "pageNo":1, "pageSize":3}' "http://localhost:9999/scrollOrder"

     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"scrollId":"DnF1ZXJ5VGhlbkZldGNoBQAAAAAAAAIxFlpYVVk1ajVZU2ZDZ1pXdi1RcU54ZVEAAAAAAAACMhZaWFVZNWo1WVNmQ2daV3YtUXFOeGVRAAAAAAAAAjMWWlhVWTVqNVlTZkNnWld2LVFxTnhlUQAAAAAAAAI1FlpYVVk1ajVZU2ZDZ1pXdi1RcU54ZVEAAAAAAAACNBZaWFVZNWo1WVNmQ2daV3YtUXFOeGVR"}' "http://localhost:9999/scrollOrder"

     * 注意，注解均需要再写一遍
     * @param orderQueryCondition
     * @return
     */
    @PostMapping("/scrollOrder")
    public HttpResult<ScrollResult<List<OrderDTO>>> scrollOrder(@Valid @RequestBody OrderQueryCondition orderQueryCondition) {
        log.info("provider 实现，orderQueryCondition is {}", orderQueryCondition);
        ScrollResult<List<OrderBO>> orderBOList = orderService.scrollOrder(orderQueryCondition);
        log.debug("查询orderQueryCondition {} 对应订单 {}", orderQueryCondition, orderBOList);

        // todo 统一抽取到converter工具类中
        List<OrderDTO> list = orderBOList.getData().stream().map(orderBO -> {
            // 这种代码，更适合放在聚合层里，而且需要支持按需查询，不是所有字段都需要
            OrderDTO orderDTO = new OrderDTO();
            // 名字相同类型不一样，不会自动copy
            BeanUtils.copyProperties(orderBO, orderDTO);
            orderDTO.setOrderNo(String.valueOf(orderBO.getOrderNo()));
            orderDTO.setOrderStatusDesc("支付中");
            orderDTO.setStoreName("men");
            return orderDTO;
        }).collect(Collectors.toList());
        return HttpResult.success(ScrollResult.of(orderBOList.getScrollId(), list));
    }

    /**
     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"orderNo":7100765053793131088}' "http://localhost:9999/statisticOrder"
     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"uid":123}' "http://localhost:9999/statisticOrder"

     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"createTimeBegin":"2023-08-29 21:32:34"}' "http://localhost:9999/statisticOrder"

     * 注意，注解均需要再写一遍
     * @param orderQueryCondition
     * @return
     */
    @PostMapping("/statisticOrder")
    public HttpResult<List<OrderStatisticDTO>> statisticOrder(@Valid @RequestBody OrderQueryCondition orderQueryCondition) {
        log.info("provider 实现，orderQueryCondition is {}", orderQueryCondition);
        List<OrderStatisticBO> orderBOList = orderService.statisticOrder(orderQueryCondition);
        log.debug("查询orderQueryCondition {} 对应订单 {}", orderQueryCondition, orderBOList);
        return HttpResult.success(orderBOList.stream().map(orderStatisticBO -> {
            // 这种代码，更适合放在聚合层里，而且需要支持按需查询，不是所有字段都需要
            OrderStatisticDTO orderStatisticDTO = new OrderStatisticDTO();
            // 名字相同类型不一样，不会自动copy
            BeanUtils.copyProperties(orderStatisticBO, orderStatisticDTO);
            return orderStatisticDTO;
        }).collect(Collectors.toList()));
    }

}
