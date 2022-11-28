package com.jessin.practice.spring.cloud.api;

import com.jessin.practice.spring.cloud.api.model.User;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @Author: jessin
 * @Date: 2022/2/10 8:40 下午
 */
@FeignClient("spring-cloud-provider")
public interface UserServiceFeignClient {

    @RequestMapping("/queryUser")
    List<User> queryUser(@RequestBody UserQueryCondition userQueryCondition);

    @RequestMapping("/insertUser")
    User insertUser(@RequestBody User user);

    @RequestMapping("/timeout")
    User timeout(@RequestParam long timeout);

    @RequestMapping("/fail")
    User fail(@RequestParam String name);

}
