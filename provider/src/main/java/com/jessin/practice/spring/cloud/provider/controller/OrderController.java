package com.jessin.practice.spring.cloud.provider.controller;


import com.jessin.practice.spring.cloud.api.dto.req.CreateOrderReq;
import com.jessin.practice.spring.cloud.api.dto.req.OrderQueryReq;
import com.jessin.practice.spring.cloud.api.dto.resp.*;
import com.jessin.practice.spring.cloud.common.HttpResult;
import com.jessin.practice.spring.cloud.common.ListUtils;
import com.jessin.practice.spring.cloud.common.PageResult;
import com.jessin.practice.spring.cloud.provider.bo.OrderBO;
import com.jessin.practice.spring.cloud.provider.bo.OrderStatisticBO;
import com.jessin.practice.spring.cloud.provider.converter.OrderTransformer;
import com.jessin.practice.spring.cloud.provider.service.OrderService;
import lombok.extern.slf4j.Slf4j;
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
 * todo es/redis/db等操作下层到infrastructure这一层，并提供通用接口，
 * todo 同时提供防腐层（依赖隔离，DTO/BO/DO隔离，上层依赖下层(controller->service->data)->api -> common，下层不能依赖上层data->service->controller，给出依赖关系图谱），定义通用的maven插件模版，抽取接口
        拆分子pom，天然隔离，无法乱写代码
      controller不要有太重的业务逻辑，进行组装即可
 */
@RestController
@Slf4j
public class OrderController {
    @Resource
    private OrderService orderService;

    /**
     * 返回值最好要复杂数据结构，以遍后续扩展
     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"storeId":140, "remark":"我是备注，我买了一台电**脑，请帮忙看下，是否合适","cancelReason":"我是取消原因","goodsIdList":[{"goodId":"g122","cartItemId": "cart1", "quantity": "1234"}]}' "http://localhost:9999/createOrder"
     * @param createOrderReq
     * @return
     */
    @PostMapping("/createOrder")
    public HttpResult<CreateOrderResp> createOrder(@Validated @RequestBody CreateOrderReq createOrderReq) {
        // todo 抽取聚合层或者领域服务层，这两个有什么区别？聚合层是多个领域服务的聚合，通过聚合根进行访问？注意，未必有领域层
        String orderNo = orderService.createOrder(createOrderReq);
        log.info("插入订单：{}，结果为：{}", createOrderReq, orderNo);
        CreateOrderResp createOrderResp = new CreateOrderResp();
        createOrderResp.setOrderNo(orderNo);
        return HttpResult.success(createOrderResp);
    }

    /**
     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"orderNo":7100765053793131088}' "http://localhost:9999/queryOrder"
     * 注意，注解均需要再写一遍
     * @param orderQueryReq
     * @return
     */
    @PostMapping("/queryOrder")
    public HttpResult<OrderDTO> queryOrder(@RequestBody OrderQueryReq orderQueryReq) {
        log.info("provider 实现，orderQueryCondition is {}", orderQueryReq);
        Optional<OrderBO> orderBOOptional = orderService.selectOrder(orderQueryReq.getOrderNo());
        log.debug("查询orderQueryCondition {} 对应订单 {}", orderQueryReq, orderBOOptional);
        return HttpResult.success(orderBOOptional.map(OrderTransformer::convert).orElse(null));
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
     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"orderNo":7100765053793131088}' "http://localhost:9999/searchOrder"
     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"uid":123}' "http://localhost:9999/searchOrder"

     分词字段精准搜索：
     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"remark":"我是阿里"}' "http://localhost:9999/searchOrder"

     分词字段搜索：
     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"remarkLike":"world hello"}' "http://localhost:9999/searchOrder"

     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"createTimeBegin":"2023-08-29 21:32:34", "pageNo":2, "pageSize":3}' "http://localhost:9999/searchOrder"     * 注意，注解均需要再写一遍
     * @param orderQueryReq
     * @return
     */
    @PostMapping("/searchOrder")
    public HttpResult<PageResult<List<OrderDTO>>> searchOrder(@Valid @RequestBody OrderQueryReq orderQueryReq) {
        log.info("provider 实现，orderQueryReq is {}", orderQueryReq);
        // 由这层转换入参和出参是合理的
        List<OrderBO> orderBOList = orderService.searchOrder(orderQueryReq);
        // 条数，其实本身已经有了
        long total = orderService.countOrder(orderQueryReq);

        List<OrderDTO> orderDTOList = orderBOList.stream().map(OrderTransformer::convert).collect(Collectors.toList());

        log.debug("查询orderQueryReq {} 对应订单 {}", orderQueryReq, orderBOList);
        return HttpResult.success(new PageResult<>(orderDTOList, total, orderQueryReq.getPageNo(), orderQueryReq.getPageSize()));
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
     * @param orderQueryReq
     * @return
     */
    @PostMapping("/scrollOrder")
    public HttpResult<ScrollResult<List<OrderDTO>>> scrollOrder(@Valid @RequestBody OrderQueryReq orderQueryReq) {
        log.info("provider 实现，orderQueryCondition is {}", orderQueryReq);
        ScrollResult<List<OrderBO>> orderBOList = orderService.scrollOrder(orderQueryReq);
        log.debug("查询orderQueryCondition {} 对应订单 {}", orderQueryReq, orderBOList);

        List<OrderDTO> list = orderBOList.getData().stream().map(OrderTransformer::convert).collect(Collectors.toList());
        return HttpResult.success(ScrollResult.of(orderBOList.getScrollId(), list));
    }

    /**
     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"orderNo":7100765053793131088}' "http://localhost:9999/statisticOrder"
     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"uid":123}' "http://localhost:9999/statisticOrder"

     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"createTimeBegin":"2023-08-29 21:32:34"}' "http://localhost:9999/statisticOrder"

     * 注意，注解均需要再写一遍
     * @param orderQueryReq
     * @return
     */
    @PostMapping("/statisticOrder")
    public HttpResult<List<OrderStatisticDTO>> statisticOrder(@Valid @RequestBody OrderQueryReq orderQueryReq) {
        log.info("provider 实现，orderQueryCondition is {}", orderQueryReq);
        List<OrderStatisticBO> orderBOList = orderService.statisticOrder(orderQueryReq);
        log.debug("查询orderQueryCondition {} 对应订单 {}", orderQueryReq, orderBOList);
        return HttpResult.success(ListUtils.transformBeanList(orderBOList, OrderStatisticDTO.class));
    }
}
