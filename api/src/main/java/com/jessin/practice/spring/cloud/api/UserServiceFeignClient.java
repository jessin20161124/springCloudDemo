package com.jessin.practice.spring.cloud.api;

import com.jessin.practice.spring.cloud.api.dto.resp.UserDTO;
import com.jessin.practice.spring.cloud.api.dto.req.UserQueryCondition;
import com.jessin.practice.spring.cloud.api.dto.resp.HttpResult;
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
    HttpResult<List<UserDTO>> queryUser(@RequestBody UserQueryCondition userQueryCondition);

    /**
     * todo DTO可以拆分为req/resp
     * @param userDTO
     * @return
     */
    @RequestMapping("/insertUser")
    HttpResult<UserDTO> insertUser(@RequestBody UserDTO userDTO);

    @RequestMapping("/timeout")
    HttpResult<UserDTO> timeout(@RequestParam long timeout);

    @RequestMapping("/fail")
    HttpResult<UserDTO> fail(@RequestParam String name);

}
