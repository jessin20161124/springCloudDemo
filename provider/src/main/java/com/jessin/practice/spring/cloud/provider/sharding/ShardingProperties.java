package com.jessin.practice.spring.cloud.provider.sharding;

import lombok.Data;
import org.apache.shardingsphere.core.yaml.config.sharding.YamlShardingRuleConfiguration;
import org.springframework.boot.context.properties.ConfigurationProperties;

import java.util.Map;
import java.util.Properties;

@ConfigurationProperties(prefix = "spring.shardingsphereplus")
@Data
public class ShardingProperties {

    /**
     * 逻辑数据源
     */
    private Map<String, DataSourceConfig> logicDataSource;

    // todo 实例数据源和名字

    /**
     * 数据源属性
     */
    private Properties props = new Properties();

    /**
     * 分表sql映射规则
     */
    private YamlShardingRuleConfiguration sharding;

    /**
     * 实例纬度的datasource
     */
    @Data
    public static class DataSourceConfig {
        private String dbName;
        private String instance;
    }
}
