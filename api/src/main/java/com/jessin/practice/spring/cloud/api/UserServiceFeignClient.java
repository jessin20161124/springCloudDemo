package com.jessin.practice.spring.cloud.api;

import com.jessin.practice.spring.cloud.api.model.User;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @Author: jessin
 * @Date: 2022/2/10 8:40 下午
 */
@FeignClient("spring-cloud-provider")
public interface UserServiceFeignClient {

    @RequestMapping("/practice/getByName")
    User getByName(@RequestParam String name);
}
