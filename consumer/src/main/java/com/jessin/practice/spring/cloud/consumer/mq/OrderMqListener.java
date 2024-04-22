package com.jessin.practice.spring.cloud.consumer.mq;

import com.jessin.practice.spring.cloud.api.dto.OrderMsg;
import com.jessin.practice.spring.cloud.api.dto.OrderOperationTypeEnum;
import com.jessin.practice.spring.cloud.api.dto.resp.OrderDTO;
import lombok.extern.slf4j.Slf4j;
import org.apache.rocketmq.spring.annotation.ConsumeMode;
import org.apache.rocketmq.spring.annotation.MessageModel;
import org.apache.rocketmq.spring.annotation.RocketMQMessageListener;
import org.apache.rocketmq.spring.annotation.SelectorType;
import org.apache.rocketmq.spring.core.RocketMQListener;
import org.springframework.stereotype.Component;

/**
 * tag消息过滤
 * https://blog.csdn.net/kusedexingfu/article/details/116245290
 */
@Slf4j
@Component
@RocketMQMessageListener(consumerGroup = "${rocketmq.consumer.orderGroup}",
        topic = "ORDER_ADD",
        selectorType = SelectorType.TAG,
        selectorExpression = "INIT", //指定了tag后，发送的消息如果不带tag，将会消费不到
        consumeMode = ConsumeMode.ORDERLY)
// 广播模式，只能是并发执行，所有的消费者都会收到
//@RocketMQMessageListener(consumerGroup = "${rocketmq.producer.groupName1}", topic = "ORDER_ADD", messageModel= MessageModel.BROADCASTING, consumeMode = ConsumeMode.CONCURRENTLY)
public class OrderMqListener implements RocketMQListener<OrderMsg> {
    @Override
    public void onMessage(OrderMsg order) {
        log.info("接收到消息，开始消费..operationType:{}, OrderType:{}, orderNo:{}",
                order.getOperationType(),
                order.getOrderStatus(), order.getOrderNo());
    }
}

