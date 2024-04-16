package com.jessin.practice.spring.cloud.provider.service;

import com.jessin.practice.spring.cloud.api.dto.req.CreateOrderReq;
import com.jessin.practice.spring.cloud.api.dto.req.OrderQueryReq;
import com.jessin.practice.spring.cloud.api.dto.resp.ScrollResult;
import com.jessin.practice.spring.cloud.provider.bo.OrderBO;
import com.jessin.practice.spring.cloud.provider.bo.OrderStatisticBO;

import java.util.Date;
import java.util.List;
import java.util.Optional;

/**
 * CQRS，读写分离，使用各自的数据模型
 */
public interface OrderOperationService {

    String createOrder(CreateOrderReq createOrderReq);

    boolean cancelOrder(String orderNo);
}
