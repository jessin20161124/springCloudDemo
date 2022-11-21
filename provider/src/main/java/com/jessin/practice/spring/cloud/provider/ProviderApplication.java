package com.jessin.practice.spring.cloud.provider;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * spring cloud服务注册，使用spring boot actuator做健康检查...需要保证向consul注册的健康检查url是正确的，
 * actuator会使用servlet biz path前缀
 * https://blog.csdn.net/weixin_34315189/article/details/91882436
 *
 * maven父子模块统一版本：
 * https://blog.csdn.net/ZYC88888/article/details/112842029
 * flattenk可以对发布方的pom进行精简和变量替换
 */
@SpringBootApplication
public class ProviderApplication {

	public static void main(String[] args) {
		SpringApplication.run(ProviderApplication.class, args);
	}

}
