package com.jessin.practice.spring.cloud.provider.config;

import org.redisson.Redisson;
import org.redisson.api.RedissonClient;
import org.redisson.config.Config;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.annotation.Resource;
import java.io.IOException;

@Configuration
@EnableConfigurationProperties(RedissonProperties.class)
public class RedissonConfig {

    @Resource
    private RedissonProperties redissonProperties;

    /**
     * 注册RedissonClient对象
     * @return
     * @throws IOException
     */
    @Bean(destroyMethod="shutdown")
    public RedissonClient redisson() throws IOException {
        Config config = new Config();
        config.useSingleServer().setAddress("redis://" + redissonProperties.getHost())
                .setPassword(redissonProperties.getPassword())
                .setConnectionPoolSize(8)
                .setConnectionMinimumIdleSize(4)
                .setConnectTimeout(10000)
                .setIdleConnectionTimeout(10000);

        RedissonClient redissonClient = Redisson.create(config);
        return redissonClient;
    }
}
