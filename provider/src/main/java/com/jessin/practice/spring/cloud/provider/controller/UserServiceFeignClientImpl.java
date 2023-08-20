package com.jessin.practice.spring.cloud.provider.controller;

import com.jessin.practice.spring.cloud.api.HttpResult;
import com.jessin.practice.spring.cloud.api.UserQueryCondition;
import com.jessin.practice.spring.cloud.api.UserServiceFeignClient;
import com.jessin.practice.spring.cloud.api.model.User;
import com.jessin.practice.spring.cloud.provider.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 *
 * @Author: jessin
 * @Date: 2022/2/10 8:53 下午
 */
@RestController
@Slf4j
public class UserServiceFeignClientImpl implements UserServiceFeignClient {

    @Resource
    private UserService userService;

    /**
     * http://localhost:9991/getUserByName?name=%E5%B0%8F%E4%BA%94
     * 注意，注解均需要再写一遍
     * @param userQueryCondition
     * @return
     */
    @RequestMapping("/queryUser")
    @Override
    public HttpResult<List<User>> queryUser(@RequestBody UserQueryCondition userQueryCondition) {
        log.info("provider 实现，userQueryCondition is {}", userQueryCondition);
        List<User> userList = userService.queryUser(userQueryCondition);
        log.debug("查询userQueryCondition：{}，对应的用户为：{}", userQueryCondition, userList);
        return HttpResult.success(userList);
    }

    /**
     * http://localhost:9991/insertUser?name=jessin&age=1&sex=1&note=test
     * @param user
     * @return
     */
    @RequestMapping("/insertUser")
    public HttpResult<User> insertUser(@RequestBody User user) {
        boolean result = userService.insert(user);
        log.info("插入用户：{}，结果为：{}", user, result);
        return HttpResult.success(user);
    }

    @RequestMapping("/timeout")
    @Override
    public HttpResult<User> timeout(long timeout) {
        log.info("provider 实现，超时:{}", timeout);

        try {
            TimeUnit.SECONDS.sleep(timeout);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        return HttpResult.success(null);
    }

    @RequestMapping("/fail")
    @Override
    public HttpResult<User> fail(String name) {
        log.info("provider 实现，fail:{}", name);
        throw new RuntimeException("fail");
    }
}
