package com.jessin.practice.spring.cloud.consumer;

import com.netflix.hystrix.HystrixCommand;
import com.netflix.hystrix.HystrixCommandGroupKey;
import com.netflix.hystrix.HystrixCommandKey;
import feign.Feign;
import feign.Target;
import feign.hystrix.HystrixFeign;
import feign.hystrix.SetterFactory;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.lang.reflect.Method;

/**
 * 也可以配置在@FeignClient Configuration上，作为个性化配置
 * https://www.jianshu.com/p/58f6e180999f
 */
@Configuration
public class HystrixConfig {

    private static String SERVICE_LEVEL_CIRCUIT_BREAKER_SERVICE = "spring-cloud-provider";
    /**
     * 修改源码{@link HystrixFeign.Builder#setterFactory}
     */
    @ConditionalOnProperty(name = "feign.hystrix.enabled")
    @Bean
    public SetterFactory setterFactory() {
        return new MyDefault();
    }

    final class MyDefault implements SetterFactory {

        @Override
        public HystrixCommand.Setter create(Target<?> target, Method method) {

            String groupKey = target.name();
            String commandKey = Feign.configKey(target.type(), method);
            // 相同服务，使用同一个线程池，相同的熔断配置
            if (SERVICE_LEVEL_CIRCUIT_BREAKER_SERVICE.equals(groupKey)) {
                return HystrixCommand.Setter
                        .withGroupKey(HystrixCommandGroupKey.Factory.asKey(groupKey))
                        .andCommandKey(HystrixCommandKey.Factory.asKey(groupKey));
//                        .andThreadPoolKey(HystrixThreadPoolKey.Factory.asKey(commandKey));
            }
            return HystrixCommand.Setter
                    .withGroupKey(HystrixCommandGroupKey.Factory.asKey(groupKey))
                    .andCommandKey(HystrixCommandKey.Factory.asKey(commandKey));
        }
    }

}