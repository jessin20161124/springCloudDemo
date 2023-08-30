package com.jessin.practice.spring.cloud.provider.sharding;


import com.google.common.base.Preconditions;
import lombok.RequiredArgsConstructor;
import org.apache.shardingsphere.core.yaml.swapper.ShardingRuleConfigurationYamlSwapper;
import org.apache.shardingsphere.shardingjdbc.api.ShardingDataSourceFactory;
import org.apache.shardingsphere.shardingjdbc.spring.boot.SpringBootConfiguration;
import org.apache.shardingsphere.spring.boot.datasource.DataSourcePropertiesSetterHolder;
import org.apache.shardingsphere.spring.boot.util.DataSourceUtil;
import org.apache.shardingsphere.spring.boot.util.PropertyUtil;
import org.apache.shardingsphere.transaction.spring.ShardingTransactionTypeScanner;
import org.apache.shardingsphere.underlying.common.config.inline.InlineExpressionParser;
import org.apache.shardingsphere.underlying.common.exception.ShardingSphereException;
import org.springframework.boot.autoconfigure.AutoConfigureBefore;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.EnvironmentAware;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.core.env.StandardEnvironment;

import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * https://www.cnblogs.com/ityml/p/14970508.html
 * @see SpringBootConfiguration
 */
@Configuration
@EnableConfigurationProperties(ShardingProperties.class)
// 放在前面，后面自动化配置的数据源就不生效了
@AutoConfigureBefore(DataSourceAutoConfiguration.class)
// final 类型的会自动加到构造函数中
@RequiredArgsConstructor
public class ShardingConfig implements EnvironmentAware {

    private final Map<String, DataSource> instanceDataSourceMap = new LinkedHashMap<>();

    private final ShardingProperties shardingProperties;

    /**
     * 配置一个sharding 数据源
     * Get sharding data source bean.
     *
     * @return data source bean
     * @throws SQLException SQL exception
     */
    @Bean
    public DataSource shardingDataSource() throws SQLException {
        return ShardingDataSourceFactory.createDataSource(getLogicDataSource(), new ShardingRuleConfigurationYamlSwapper().swap(shardingProperties.getSharding()), shardingProperties.getProps());
    }

    private Map<String, DataSource> getLogicDataSource() {
        return shardingProperties.getLogicDataSource().entrySet().stream().peek(entry -> {
            Preconditions.checkArgument(instanceDataSourceMap.containsKey(entry.getValue().getInstance()), "实例数据源不存在: " + entry);
        }).collect(
                Collectors.toMap(Map.Entry::getKey,
                        entry -> new BasicDataSource(entry.getValue().getDbName(), instanceDataSourceMap.get(entry.getValue().getInstance()))));
    }

    /**
     * Create sharding transaction type scanner.
     *
     * @return sharding transaction type scanner
     */
    @Bean
    public ShardingTransactionTypeScanner shardingTransactionTypeScanner() {
        return new ShardingTransactionTypeScanner();
    }

    @Override
    public final void setEnvironment(final Environment environment) {
        String prefix = "spring.shardingsphereplus.datasource.";
        for (String each : getDataSourceNames(environment, prefix)) {
            try {
                instanceDataSourceMap.put(each, getDataSource(environment, prefix, each));
            } catch (final ReflectiveOperationException ex) {
                throw new ShardingSphereException("Can't find datasource type!", ex);
            } catch (final NamingException namingEx) {
                throw new ShardingSphereException("Can't find JNDI datasource!", namingEx);
            }
        }
    }

    private List<String> getDataSourceNames(final Environment environment, final String prefix) {
        StandardEnvironment standardEnv = (StandardEnvironment) environment;
        standardEnv.setIgnoreUnresolvableNestedPlaceholders(true);
        return null == standardEnv.getProperty(prefix + "name")
                ? new InlineExpressionParser(standardEnv.getProperty(prefix + "names")).splitAndEvaluate() : Collections.singletonList(standardEnv.getProperty(prefix + "name"));
    }

    @SuppressWarnings("unchecked")
    private DataSource getDataSource(final Environment environment, final String prefix, final String dataSourceName) throws ReflectiveOperationException, NamingException {
        Map<String, Object> dataSourceProps = PropertyUtil.handle(environment, prefix + dataSourceName.trim(), Map.class);
        Preconditions.checkState(!dataSourceProps.isEmpty(), "Wrong datasource properties!");
        DataSource result = DataSourceUtil.getDataSource(dataSourceProps.get("type").toString(), dataSourceProps);
        DataSourcePropertiesSetterHolder.getDataSourcePropertiesSetterByType(dataSourceProps.get("type").toString()).ifPresent(
                dataSourcePropertiesSetter -> dataSourcePropertiesSetter.propertiesSet(environment, prefix, dataSourceName, result));
        return result;
    }

}
