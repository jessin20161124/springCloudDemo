package com.jessin.practice.spring.cloud.provider.hbase;

import org.apache.hadoop.hbase.HConstants;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.hadoop.hbase.HbaseTemplate;

import java.util.concurrent.TimeUnit;

/**
 * hbase提供了spring-data的使用方式HbaseTemplate，无需直接操作hbase-client
 * 但是未提供spring-boot-starter的使用方式
 */
@Configuration
@EnableConfigurationProperties(HbaseProperties.class)
public class HbaseConfiguration {

    @Bean
    public HbaseTemplate hbaseTemplate(HbaseProperties hbaseProperties) {
        org.apache.hadoop.conf.Configuration conf = new org.apache.hadoop.conf.Configuration();
        conf.set(HConstants.ZOOKEEPER_QUORUM, hbaseProperties.getZookeeperQuorum());
        conf.set(HConstants.ZOOKEEPER_CLIENT_PORT, hbaseProperties.getClientPort());
        conf.set(HConstants.ZOOKEEPER_ZNODE_PARENT, hbaseProperties.getZnodeParent());
        // https://zhuanlan.zhihu.com/p/407267382
        conf.setLong(HConstants.HBASE_RPC_TIMEOUT_KEY, TimeUnit.SECONDS.toMillis(5));
        conf.setLong(HConstants.HBASE_CLIENT_OPERATION_TIMEOUT,TimeUnit.SECONDS.toMillis(10));
        conf.setLong(HConstants.HBASE_CLIENT_SCANNER_TIMEOUT_PERIOD,TimeUnit.SECONDS.toMillis(20));
        conf.setInt(HConstants.HBASE_CLIENT_RETRIES_NUMBER,2);
        // todo 第一次加载比较慢，启动时初始化，hbase-client比较重，启动时还会连接zk，从zk获取meta region server
        return new HbaseTemplate(conf);
    }
}
