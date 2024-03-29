package com.jessin.practice.spring.cloud.provider.redisson;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

@Data
@ConfigurationProperties(prefix = "redisson")
public class RedissonProperties {
    private String host;
    private String password;
}
