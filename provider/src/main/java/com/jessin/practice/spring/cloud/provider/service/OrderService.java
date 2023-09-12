package com.jessin.practice.spring.cloud.provider.service;

import com.jessin.practice.spring.cloud.api.dto.req.CreateOrderReq;
import com.jessin.practice.spring.cloud.api.dto.req.OrderQueryReq;
import com.jessin.practice.spring.cloud.api.dto.resp.ScrollResult;
import com.jessin.practice.spring.cloud.provider.bo.OrderBO;
import com.jessin.practice.spring.cloud.provider.bo.OrderStatisticBO;

import java.util.Date;
import java.util.List;
import java.util.Optional;

public interface OrderService {

    String createOrder(CreateOrderReq createOrderReq);

    Optional<OrderBO> selectOrder(String orderNo);

    boolean cancelOrder(String orderNo);

    List<OrderBO> searchOrder(OrderQueryReq orderQueryCondition);

    List<OrderBO> searchArchiveOrder(String uid, Date createTimeBegin, Date createTimeEnd);

    ScrollResult<List<OrderBO>> scrollOrder(OrderQueryReq orderQueryCondition);

    long countOrder(OrderQueryReq orderQueryCondition);

    List<OrderStatisticBO> statisticOrder(OrderQueryReq orderQueryCondition);
}
