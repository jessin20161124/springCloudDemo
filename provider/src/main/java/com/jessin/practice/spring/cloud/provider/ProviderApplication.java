package com.jessin.practice.spring.cloud.provider;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * spring cloud服务注册，使用spring boot actuator做健康检查...需要保证向consul注册的健康检查url是正确的，
 * actuator会使用servlet biz path前缀
 * https://blog.csdn.net/weixin_34315189/article/details/91882436
 */
@SpringBootApplication
public class ProviderApplication {

	public static void main(String[] args) {
		SpringApplication.run(ProviderApplication.class, args);
	}

}
