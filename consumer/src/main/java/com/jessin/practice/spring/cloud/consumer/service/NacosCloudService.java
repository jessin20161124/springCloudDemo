package com.jessin.practice.spring.cloud.consumer.service;

import com.alibaba.cloud.nacos.NacosConfigManager;
import com.alibaba.cloud.nacos.NacosConfigProperties;
import com.alibaba.nacos.api.config.listener.Listener;
import java.util.concurrent.Executor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.context.annotation.Configuration;

/**
 * RefreshScope 表示该bean在environment有变化时，会动态刷新，重新注入依赖
 * nacos跟spring cloud集成的话，配置文件在bootstrap.yaml，会自动注入到environment中，
 * 因而可以使用@Value，spring cloud才有RefreshScope，表示可以动态刷新，会重新构建environment
 * aa @Value 的方式dataId默认拉取的配置文件名为spring.application.name.{file.extension}，或者默认有共同前缀的spring.application.name，从而拉取多个配置文件
 * 所以spring cloud是一套微服务解决方案，很多都封装好了，需要大家去适配它，考虑通用性，有时就不太灵活
 * 而spring boot是自动化配置而已，简化配置，更方便使用，但是功能还是和原生的一样
 *
 * spring cloud貌似没有提供configListener的解决方案？todo 还是说监听refresh event?
 * 最好不要同时使用spring cloud和spring boot配置nacos，这里会配置两次连接，而且会有类冲突
 *
 * @Author: jessin
 * @Date: 2022/2/13 5:17 下午
 */
@Configuration
@RefreshScope
@Slf4j
public class NacosCloudService implements InitializingBean {

    @Value("${spring.application.name}")
    private String appName;

    @Value("${useLocalCache:false}")
    private boolean useLocalCache;

    @Value("${myKey:112}")
    private int myKey;

    @Autowired
    private NacosConfigManager nacosConfigManager;
    @Autowired
    private NacosConfigProperties configProperties;

    public boolean getSwitch() {
        return useLocalCache;
    }

    public int getMyKey() {
        return myKey;
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        // nacos spring cloud回调方式或者监听event
        nacosConfigManager.getConfigService().addListener(appName + ".properties", configProperties.getGroup(),
                new Listener() {
                    @Override
                    public Executor getExecutor() {
                        return null;
                    }

                    /**
                     * 接收整个配置文件的配置
                     * @param configInfo
                     */
                    @Override
                    public void receiveConfigInfo(String configInfo) {
                        log.info("收到spring cloud配置变更消息:{}", configInfo);
                    }
                });
    }
}