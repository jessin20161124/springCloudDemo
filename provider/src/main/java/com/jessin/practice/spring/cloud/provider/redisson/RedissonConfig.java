package com.jessin.practice.spring.cloud.provider.redisson;

import org.redisson.Redisson;
import org.redisson.api.RedissonClient;
import org.redisson.config.Config;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.annotation.Resource;
import java.io.IOException;

/**
 * todo redis mget/pipeline使用，lpush/rpop实现redis队列 sortedset用于个人消息
 * todo pub/sub
 */
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
                // todo 抽取可配置
                .setConnectionPoolSize(8)
                .setConnectionMinimumIdleSize(4)
                .setConnectTimeout(10000)
                .setIdleConnectionTimeout(10000);

        RedissonClient redissonClient = Redisson.create(config);
        return redissonClient;
    }
}
