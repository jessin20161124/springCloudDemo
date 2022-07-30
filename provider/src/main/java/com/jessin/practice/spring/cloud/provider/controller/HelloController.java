package com.jessin.practice.spring.cloud.provider.controller;

import com.jessin.practice.spring.cloud.api.UserServiceFeignClient;
import com.jessin.practice.spring.cloud.api.model.User;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.concurrent.TimeUnit;

/**
 *
 * @Author: jessin
 * @Date: 2022/2/10 8:53 下午
 */
@RestController
@Slf4j
public class HelloController implements UserServiceFeignClient {

    /**
     * http://localhost:9999/getByName?name=xiaoming
     * 注意，注解均需要再写一遍
     * @param name
     * @return
     */
    @RequestMapping("/getByName")
    @Override
    public User getByName(String name) {
        log.info("provider 实现，name is {}", name);
        User user = new User();
        user.setName(name);
        user.setAge(18);
        return user;
    }

    @RequestMapping("/timeout")
    @Override
    public User timeout(long timeout) {
        log.info("provider 实现，超时:{}", timeout);

        try {
            TimeUnit.SECONDS.sleep(timeout);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    @RequestMapping("/fail")
    @Override
    public User fail(String name) {
        log.info("provider 实现，fail:{}", name);
        throw new RuntimeException("fail");
    }
}
