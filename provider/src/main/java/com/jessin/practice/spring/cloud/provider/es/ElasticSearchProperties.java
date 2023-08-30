package com.jessin.practice.spring.cloud.provider.es;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix = "elasticsearch")
@Data
public class ElasticSearchProperties {

    private String host;

    private int port;

    private int connTimeout;

    private int socketTimeout;

    private int connectionRequestTimeout;
}
