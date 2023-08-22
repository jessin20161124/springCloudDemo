package com.jessin.practice.spring.cloud.consumer.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.kafka.support.Acknowledgment;
import org.springframework.stereotype.Service;

@Service
@Slf4j
public class KafkaConsumer {

    /**
     * 手动ack
     * @param input
     * @param ack
     */
    @KafkaListener(id = "webGroup", topics = "topic_input_2")
    public void listen(String input, Acknowledgment ack) {
        log.info("input value: {}" , input);
        ack.acknowledge();
    }
}
