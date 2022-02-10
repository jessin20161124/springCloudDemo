package com.jessin.practice.spring.cloud.provider.controller;

import com.jessin.practice.spring.cloud.api.UserServiceFeignClient;
import com.jessin.practice.spring.cloud.api.model.User;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author: jessin
 * @Date: 2022/2/10 8:53 下午
 */
@RestController
public class HelloController implements UserServiceFeignClient {

    /**
     * http://localhost:9999/practice/getByName?name=xiaoming
     * @param name
     * @return
     */
    @RequestMapping("/getByName")
    @Override
    public User getByName(String name) {
        User user = new User();
        user.setName(name);
        user.setAge(18);
        return user;
    }
}
