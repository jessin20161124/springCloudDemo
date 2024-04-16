package com.jessin.practice.spring.cloud.consumer.mq;

import com.jessin.practice.spring.cloud.api.dto.OrderMsg;
import com.jessin.practice.spring.cloud.api.dto.resp.OrderDTO;
import lombok.extern.slf4j.Slf4j;
import org.apache.rocketmq.spring.annotation.ConsumeMode;
import org.apache.rocketmq.spring.annotation.RocketMQMessageListener;
import org.apache.rocketmq.spring.core.RocketMQListener;
import org.springframework.stereotype.Component;

@Slf4j
@Component
@RocketMQMessageListener(consumerGroup = "${rocketmq.producer.groupName1}", topic = "ORDER_ADD",consumeMode = ConsumeMode.ORDERLY)
public class OrderMqListener implements RocketMQListener<OrderMsg> {
    @Override
    public void onMessage(OrderMsg order) {
        log.info("接收到消息，开始消费..OrderType:{}, orderNo:{}", order.getOrderStatus(), order.getOrderNo());
    }
}

