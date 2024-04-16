package com.jessin.practice.spring.cloud.provider.application;

import com.jessin.practice.spring.cloud.api.dto.req.CreateOrderReq;

/**
 * CQRS，读写分离，使用各自的数据模型
 */
public interface OrderOperationService {

    String createOrder(CreateOrderReq createOrderReq);

    boolean cancelOrder(String orderNo);
}
