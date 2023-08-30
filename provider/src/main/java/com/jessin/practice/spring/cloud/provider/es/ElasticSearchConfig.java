package com.jessin.practice.spring.cloud.provider.es;


import org.apache.http.HttpHost;
import org.elasticsearch.client.RestClient;
import org.elasticsearch.client.RestClientBuilder;
import org.elasticsearch.client.RestHighLevelClient;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@EnableConfigurationProperties(ElasticSearchProperties.class)
public class ElasticSearchConfig {
    @Bean(destroyMethod = "close", name = "client")
    public RestHighLevelClient initRestClient(ElasticSearchProperties elasticSearchProperties) {
        RestClientBuilder builder = RestClient.builder(new HttpHost(elasticSearchProperties.getHost(), elasticSearchProperties.getPort()))
                .setRequestConfigCallback(requestConfigBuilder -> requestConfigBuilder
                        .setConnectTimeout(elasticSearchProperties.getConnTimeout())
                        .setSocketTimeout(elasticSearchProperties.getSocketTimeout())
                        .setConnectionRequestTimeout(elasticSearchProperties.getConnectionRequestTimeout()));
        return new RestHighLevelClient(builder);
    }
}
