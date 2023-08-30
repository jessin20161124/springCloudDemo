package com.jessin.practice.spring.cloud.consumer.controller;

import lombok.extern.slf4j.Slf4j;
import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.kafka.support.Acknowledgment;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * todo error handler使用
 */
@Service
@Slf4j
public class KafkaConsumer {

    /**
     * 单个消费
     * 手动ack
     * @param record 整个消费记录，包含发送的key和发送的value
     * @param value 发送的value
     * @param ack
     */
//    @KafkaListener(id = "webGroup", topics = "topic_input_2")
//    public void listen(ConsumerRecord<String, String> record, String value, Acknowledgment ack) {
//        log.info("input value: {}" , value);
//        log.info("record key: {}, record value: {}" , record.key(), record.value());
//        // 单条消费是先将offset放到内存中累积，下次poll时再提交，如果发生重启，可能重复消费，可以改为立马commitOffset
//        ack.acknowledge();
//    }

    /**
     * 批量消费，spring-kafka poll多条投递反射这里，和单个消费不能共存
     * https://cloud.tencent.com/developer/article/2151557
     * 手动ack
     * @param ack
     */
    @KafkaListener(id = "webGroup", topics = "topic_input_2")
    public void batchListen(List<ConsumerRecord<String, String>> recordList, Acknowledgment ack) {
        log.info("record list : {}", recordList.size());
        // 如果要改为并发消费，需要按照partition再聚合下
        recordList.forEach(record -> {
            log.info("record key: {}, record partition: {} record value: {}" ,
                    record.key(), record.partition(), record.value());
        });
        ack.acknowledge();
    }
}
