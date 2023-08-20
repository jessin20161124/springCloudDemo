package com.jessin.practice.spring.cloud.consumer.controller;

import com.jessin.practice.spring.cloud.api.HttpResult;
import com.jessin.practice.spring.cloud.api.UserQueryCondition;
import com.jessin.practice.spring.cloud.api.UserServiceFeignClient;
import com.jessin.practice.spring.cloud.api.model.User;
import com.jessin.practice.spring.cloud.consumer.service.NacosCloudService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 *
 * @Author: jessin
 * @Date: 2022/2/10 7:58 下午
 */
@RestController
@Slf4j
public class ConfigController {

    @Resource
    private NacosCloudService nacosCloudService;

    @Resource
    private UserServiceFeignClient userServiceFeignClient;

    /**
     * http://localhost:9991/getUseLocalCache
     *
     * 修改值：
     *
     * curl -X POST "http://101.43.195.208:8848/nacos/v1/cs/configs?dataId=spring-cloud-consumer.properties&group=DEFAULT_GROUP&content=useLocalCache=true"
     *
     * @return
     */
    @RequestMapping("/getUseLocalCache")
    public boolean getUseLocalCache() {
        return nacosCloudService.getSwitch();
    }

    /**
     * http://localhost:9991/getKey
     *
     * 修改值：
     *
     * curl -X POST "http://101.43.195.208:8848/nacos/v1/cs/configs?dataId=spring-cloud-consumer.properties&group=DEFAULT_GROUP&content=myKey=123"
     *
     * @return
     */
    @RequestMapping("/getKey")
    public int getKey() {
        // spring cloud
        return nacosCloudService.getMyKey();
    }

    /**
     * http://localhost:9991/getUserByName?name=xiaoming
     * @param name
     * @return
     */
    @RequestMapping("/getUserByName")
    public HttpResult<List<User>> getUserByName(String name) {
        log.info("name is {}, myKey:{}", name, nacosCloudService.getMyKey());
        UserQueryCondition userQueryCondition = new UserQueryCondition();
        userQueryCondition.setName(name);
        return userServiceFeignClient.queryUser(userQueryCondition);
    }

    /**
     * http://localhost:9991/insertUser?name=jessin&age=1&sex=1&note=test
     * @param user
     * @return
     */
    @RequestMapping("/insertUser")
    public HttpResult<User> insertUser(User user) {
        log.info("insert user:{}", user);
        return userServiceFeignClient.insertUser(user);
    }


    /**
     * http://localhost:9991/timeout?timeout=3
     * @param timeout
     * @return
     */
    @RequestMapping("/timeout")
    public HttpResult<User> timeout(long timeout) {
        log.info("timeout: {}", timeout);
        return userServiceFeignClient.timeout(timeout);
    }

    /**
     * http://localhost:9991/fail?name=xiaoming
     * @param name
     * @return
     */
    @RequestMapping("/fail")
    public HttpResult<User> fail(String name) {
        log.info("fail name: {}", name);
        return userServiceFeignClient.fail(name);
    }

}
