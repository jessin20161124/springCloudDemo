package com.jessin.practice.spring.cloud.provider.infrastructure.mq;

import com.jessin.practice.spring.cloud.api.dto.UserMsg;
import com.jessin.practice.spring.cloud.common.JsonUtils;
import com.jessin.practice.spring.cloud.provider.domain.entity.UserDO;
import lombok.extern.slf4j.Slf4j;
import org.apache.rocketmq.client.consumer.DefaultMQPushConsumer;
import org.apache.rocketmq.common.message.MessageExt;
import org.apache.rocketmq.spring.annotation.ConsumeMode;
import org.apache.rocketmq.spring.annotation.RocketMQMessageListener;
import org.apache.rocketmq.spring.core.RocketMQListener;
import org.apache.rocketmq.spring.core.RocketMQPushConsumerLifecycleListener;
import org.springframework.beans.BeanUtils;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.nio.charset.StandardCharsets;

@Slf4j
@Component
@RocketMQMessageListener(consumerGroup = "${rocketmq.consumer.userGroup}", topic = "USER_ADD", consumeMode = ConsumeMode.ORDERLY)
public class UserMqListener implements RocketMQListener<MessageExt>, RocketMQPushConsumerLifecycleListener {

    @Resource
    private MongoTemplate mongoTemplate;

    // todo 如何保证手动提交呢？这里应该是看异常，没有异常则自动提交offset。如何设置手动提交offset，自动提交可能会丢消息？
    // 业务执行完毕没有抛出异常则由代理类自动提交ACK
    // 写入es/hbase，需要保证同一订单有序
    @Override
    public void onMessage(MessageExt messageExt) {
        // todo 消息消费延迟，以及打印请求入口日志，调用下游日志
        String body = new String(messageExt.getBody(), StandardCharsets.UTF_8);

        UserMsg userMsg = JsonUtils.read(body, UserMsg.class);
        log.info("接收到消息msgId={},queueId={}，延迟：{}ms，开始消费..operationType:{}, userMsg:{}",
                messageExt.getMsgId(), messageExt.getQueueId(),
                System.currentTimeMillis() - messageExt.getBornTimestamp(),
                userMsg.getOperationType(), JsonUtils.write(userMsg));
        UserDO userDO = new UserDO();
        BeanUtils.copyProperties(userMsg, userDO);
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

    /**
     * todo 针对当前group设置一些自定义参数
     * 设置最大重试次数
     * @param consumer
     */
    @Override
    public void prepareStart(DefaultMQPushConsumer consumer) {
        // 对于顺序消费，默认是无限重试
        consumer.setMaxReconsumeTimes(5);
        // 对于一个新分组，默认好像不是从最新的消息开始消费。。https://blog.csdn.net/prestigeding/article/details/96576932
//        consumer.setConsumeFromWhere();
    }
}

