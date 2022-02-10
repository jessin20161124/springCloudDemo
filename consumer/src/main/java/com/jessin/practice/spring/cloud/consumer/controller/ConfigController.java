package com.jessin.practice.spring.cloud.consumer.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * RefreshScope 表示该bean会动态刷新
 *
 * @Author: jessin
 * @Date: 2022/2/10 7:58 下午
 */
@RestController
@RequestMapping("/mapping")
@RefreshScope
public class ConfigController {

    @Value("${useLocalCache:false}")
    private boolean useLocalCache;

    /**
     * http://localhost:9998/mapping/get
     *
     * 修改值：
     *
     * curl -X POST "http://101.43.195.208:8848/nacos/v1/cs/configs?dataId=spring-cloud-consumer.properties&group=DEFAULT_GROUP&content=useLocalCache=true"
     *
     * @return
     */
    @RequestMapping("/get")
    public boolean get() {
        return useLocalCache;
    }

}
