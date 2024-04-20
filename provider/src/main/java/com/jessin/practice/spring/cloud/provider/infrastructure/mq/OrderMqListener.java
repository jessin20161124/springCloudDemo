package com.jessin.practice.spring.cloud.provider.infrastructure.mq;

import com.google.common.base.Preconditions;
import com.jessin.practice.spring.cloud.api.dto.OrderMsg;
import com.jessin.practice.spring.cloud.api.dto.OrderOperationTypeEnum;
import com.jessin.practice.spring.cloud.provider.domain.constant.EsIndexConstants;
import com.jessin.practice.spring.cloud.provider.domain.converter.OrderTransformer;
import com.jessin.practice.spring.cloud.provider.domain.entity.OrderDO;
import com.jessin.practice.spring.cloud.provider.infrastructure.es.ElasticSearchOperation;
import com.jessin.practice.spring.cloud.provider.infrastructure.hbase.HbaseService;
import lombok.extern.slf4j.Slf4j;
import org.apache.rocketmq.spring.annotation.ConsumeMode;
import org.apache.rocketmq.spring.annotation.RocketMQMessageListener;
import org.apache.rocketmq.spring.core.RocketMQListener;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

@Slf4j
@Component
@RocketMQMessageListener(consumerGroup = "${rocketmq.consumer.orderGroup}", topic = "ORDER_ADD", consumeMode = ConsumeMode.ORDERLY)
public class OrderMqListener implements RocketMQListener<OrderMsg> {

    @Resource
    private HbaseService hbaseService;

    @Resource
    private ElasticSearchOperation elasticSearchOperation;

    // 写入es/hbase，需要保证同一订单有序
    @Override
    public void onMessage(OrderMsg orderMsg) {
        log.info("接收到消息，开始消费..OrderType:{}, orderNo:{}", OrderOperationTypeEnum.codeOf(orderMsg.getOperationType()), orderMsg.getOrderNo());
        OrderDO orderDO = OrderTransformer.convert(orderMsg);

        // todo 通过binlog构建索引
        // 异步，重试直到成功
//        if (order.getOperationType() == OrderOperationTypeEnum.INIT.getCode()) {
//            elasticSearchOperation.createDocument(EsIndexConstants.ORDER_INFO_INDEX, orderDO);
//            hbaseService.putDataToHBase(orderDO);
//        } else if (order.getOperationType() == OrderOperationTypeEnum.USER_CANCEL.getCode()) {
//            updateEsOrderStatus(order.getOrderNo(), (byte) 1);
//            hbaseService.putDataToHBase(orderDO);
//        } else if (order.getOperationType() == OrderOperationTypeEnum.TIMEOUT_CANCEL.getCode()) {
//            updateEsOrderStatus(order.getOrderNo(), (byte) 2);
//            hbaseService.putDataToHBase(orderDO);
//        }
    }

    /**
     * 异步更新，重试。这里使用了es乐观锁，版本概念更新
     * todo @Retryable()
     * @param orderNo
     * @return
     */
    private boolean updateEsOrderStatus(String orderNo, byte orderStatus) {
        OrderDO esOrder = elasticSearchOperation.getDocument(EsIndexConstants.ORDER_INFO_INDEX, orderNo, OrderDO.class);

        Preconditions.checkNotNull(esOrder, "es订单不存在: " + orderNo);
        Preconditions.checkArgument(esOrder.getOrderStatus() == 0, "es订单状态非法: " + orderNo);
        esOrder.setOrderStatus(orderStatus);
        boolean ret = elasticSearchOperation.updateDocument(EsIndexConstants.ORDER_INFO_INDEX, esOrder);
        return ret;
    }
}

