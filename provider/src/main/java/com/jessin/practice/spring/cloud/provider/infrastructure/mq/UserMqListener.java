package com.jessin.practice.spring.cloud.provider.infrastructure.mq;

import com.jessin.practice.spring.cloud.api.dto.UserMsg;
import com.jessin.practice.spring.cloud.provider.domain.entity.UserDO;
import lombok.extern.slf4j.Slf4j;
import org.apache.rocketmq.spring.annotation.ConsumeMode;
import org.apache.rocketmq.spring.annotation.RocketMQMessageListener;
import org.apache.rocketmq.spring.core.RocketMQListener;
import org.springframework.beans.BeanUtils;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

@Slf4j
@Component
@RocketMQMessageListener(consumerGroup = "${rocketmq.producer.groupName}", topic = "USER_ADD", consumeMode = ConsumeMode.ORDERLY)
public class UserMqListener implements RocketMQListener<UserMsg> {

    @Resource
    private MongoTemplate mongoTemplate;

    // 写入es/hbase，需要保证同一订单有序
    @Override
    public void onMessage(UserMsg order) {
        log.info("接收到消息，开始消费..OrderType:{}, orderNo:{}", order.getOperationType(), order.getId());
        UserDO userDO = new UserDO();
        BeanUtils.copyProperties(order, userDO);
        syncUserToMongo(userDO);
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

    private void syncUserToMongo(UserDO userDO) {
//        mongoTemplate.save(user); // _id存在时会把旧数据进行覆盖；
        mongoTemplate.insert(userDO); // _id存在时会提示主键重复的异常；
    }
}

