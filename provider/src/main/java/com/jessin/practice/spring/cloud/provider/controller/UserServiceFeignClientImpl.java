package com.jessin.practice.spring.cloud.provider.controller;

import com.jessin.practice.spring.cloud.api.dto.resp.HttpResult;
import com.jessin.practice.spring.cloud.api.UserServiceFeignClient;
import com.jessin.practice.spring.cloud.api.dto.resp.UserDTO;
import com.jessin.practice.spring.cloud.api.dto.req.UserQueryCondition;
import com.jessin.practice.spring.cloud.provider.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 *
 * todo 这里最好不要实现接口，不然后续增加接口的话，可能会编译不通过，或者使用默认方法
 * todo 对于@Valid，抽取通用报错返回
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
     *
     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"userName":"小五"}' "http://localhost:9999/queryUser"

     * 注意，注解均需要再写一遍
     * @param userQueryCondition
     * @return
     */
    @RequestMapping("/queryUser")
    @Override
    public HttpResult<List<UserDTO>> queryUser(@RequestBody UserQueryCondition userQueryCondition) {
        log.info("provider 实现，userQueryCondition is {}", userQueryCondition);
        List<UserDTO> userDTOList = userService.queryUser(userQueryCondition);
        log.debug("查询userQueryCondition：{}，对应的用户为：{}", userQueryCondition, userDTOList);
        return HttpResult.success(userDTOList);
    }

    /**
     * http://localhost:9991/insertUser?name=jessin&age=1&sex=1&note=test

     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"name":"hha", "age":18, "sex": 1, "note":"i am m note"}' "http://localhost:9999/insertUser"

     * @param userDTO
     * @return
     */
    @RequestMapping("/insertUser")
    @Override
    public HttpResult<UserDTO> insertUser(@Valid @RequestBody UserDTO userDTO) {
        boolean result = userService.insert(userDTO);
        log.info("插入用户：{}，结果为：{}", userDTO, result);
        return HttpResult.success(userDTO);
    }

    @RequestMapping("/timeout")
    @Override
    public HttpResult<UserDTO> timeout(long timeout) {
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
    public HttpResult<UserDTO> fail(String name) {
        log.info("provider 实现，fail:{}", name);
        throw new RuntimeException("fail");
    }
}
