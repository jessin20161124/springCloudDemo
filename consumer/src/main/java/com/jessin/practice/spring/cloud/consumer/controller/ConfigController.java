package com.jessin.practice.spring.cloud.consumer.controller;

import com.jessin.practice.spring.cloud.api.UserServiceFeignClient;
import com.jessin.practice.spring.cloud.api.model.User;
import javax.annotation.Resource;
import lombok.extern.slf4j.Slf4j;
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
@RefreshScope
@Slf4j
public class ConfigController {

    @Value("${useLocalCache:false}")
    private boolean useLocalCache;

    @Resource
    private UserServiceFeignClient userServiceFeignClient;

    /**
     * http://localhost:9998/practice/getValue
     *
     * 修改值：
     *
     * curl -X POST "http://101.43.195.208:8848/nacos/v1/cs/configs?dataId=spring-cloud-consumer.properties&group=DEFAULT_GROUP&content=useLocalCache=true"
     *
     * @return
     */
    @RequestMapping("/getValue")
    public boolean get() {
        return useLocalCache;
    }

    /**
     * http://localhost:9998/practice/getUserByName?name=xiaoming
     * @param name
     * @return
     */
    @RequestMapping("/getUserByName")
    public User getUserByName(String name) {
        log.info("name is {}", name);
        return userServiceFeignClient.getByName(name);
    }
}
