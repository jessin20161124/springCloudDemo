package com.jessin.practice.spring.cloud.provider.controller;

import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.concurrent.atomic.AtomicInteger;

@RestController
public class KafkaController {

    @Resource
    private KafkaTemplate<Object, Object> template;

    private AtomicInteger atomicInteger = new AtomicInteger();
    /**
     *
     * key/value均必须是字符串，使用序列化器：org.apache.kafka.common.serialization.StringSerializer
     *
     * http://localhost:9999/send/def
     * @param input
     */
    @GetMapping("/send/{input}")
    public void sendFoo(@PathVariable String input) {
        this.template.send("topic_input_2", atomicInteger.incrementAndGet() + "", input);
    }
}
