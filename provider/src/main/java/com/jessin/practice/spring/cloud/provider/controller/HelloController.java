package com.jessin.practice.spring.cloud.provider.controller;

import com.jessin.practice.spring.cloud.api.UserServiceFeignClient;
import com.jessin.practice.spring.cloud.api.model.User;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
}
