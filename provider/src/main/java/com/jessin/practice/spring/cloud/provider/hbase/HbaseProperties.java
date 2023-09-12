package com.jessin.practice.spring.cloud.provider.hbase;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix = "hbase")
@Data
public class HbaseProperties {

    private String zookeeperQuorum;

    private String clientPort;

    private String znodeParent;
}
