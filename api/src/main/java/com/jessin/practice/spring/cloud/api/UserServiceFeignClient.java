package com.jessin.practice.spring.cloud.api;

import com.jessin.practice.spring.cloud.api.model.User;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * todo 用HttpResult包一层，定义一下错误码
 *
 * todo 使用远程consul的话，服务心跳会失败，这里手动指定url
 *
 * @Author: jessin
 * @Date: 2022/2/10 8:40 下午
 */
@FeignClient(name = "spring-cloud-provider", url = "http://localhost:9999")
public interface UserServiceFeignClient {

    @RequestMapping("/queryUser")
    HttpResult<List<User>> queryUser(@RequestBody UserQueryCondition userQueryCondition);

    @RequestMapping("/insertUser")
    HttpResult<User> insertUser(@RequestBody User user);

    @RequestMapping("/timeout")
    HttpResult<User> timeout(@RequestParam long timeout);

    @RequestMapping("/fail")
    HttpResult<User> fail(@RequestParam String name);

}
