package com.jessin.practice.spring.cloud.consumer;

import com.jessin.practice.spring.cloud.common.GlobalExceptionHandler;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.Bean;

/**
 * https://nacos.io/zh-cn/docs/quick-start-spring-cloud.html
 */
@EnableFeignClients(basePackages = "com.jessin.practice.spring.cloud.api")
@SpringBootApplication
public class ConsumerApplication {
	public static void main(String[] args) {
		SpringApplication.run(ConsumerApplication.class, args);
	}

	@Bean
	public GlobalExceptionHandler globalExceptionHandler() {
		return new GlobalExceptionHandler();
	}
}
