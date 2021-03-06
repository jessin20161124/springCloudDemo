package com.jessin.practice.spring.cloud.consumer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

/**
 * https://nacos.io/zh-cn/docs/quick-start-spring-cloud.html
 */
@EnableFeignClients(basePackages = "com.jessin.practice.spring.cloud.api")
@SpringBootApplication
public class ConsumerApplication {
	public static void main(String[] args) {
		SpringApplication.run(ConsumerApplication.class, args);
	}
}
