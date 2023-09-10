package com.jessin.practice.spring.cloud.provider.controller;

import com.jessin.practice.spring.cloud.api.dto.req.UserQueryReq;
import com.jessin.practice.spring.cloud.api.dto.req.UserUpdateReq;
import com.jessin.practice.spring.cloud.common.HttpResult;
import com.jessin.practice.spring.cloud.common.PageResult;
import com.jessin.practice.spring.cloud.api.dto.resp.UserDTO;
import com.jessin.practice.spring.cloud.api.dto.resp.UserStatisticDTO;
import com.jessin.practice.spring.cloud.provider.bo.UserQueryCondition;
import com.jessin.practice.spring.cloud.provider.converter.UserTransformer;
import com.jessin.practice.spring.cloud.provider.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 *
 * 这里最好不要实现接口，不然后续增加接口的话，可能会编译不通过，或者使用默认方法
 * todo 如果绕过接口，直接操作数据库（后门），可能会导致不一致，而且问题不好排查。
 * todo 毕竟有业务逻辑，不是只操作一条记录就能搞定的，例如还需要插入es/mongodb；能自动操作，就不要依赖人
 *
 * @Author: jessin
 * @Date: 2022/2/10 8:53 下午
 */
@RestController
@Slf4j
public class UserServiceFeignClientImpl {

    @Resource
    private UserService userService;

    /**
     * http://localhost:9991/getUserByName?name=%E5%B0%8F%E4%BA%94

     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"name":"laoli", "pageNo":2,"pageSize":3}' "http://localhost:9999/queryUser"

     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"name":"laoli", "useMongo":true, "pageNo":2,"pageSize":3}' "http://localhost:9999/queryUser"

     * 注意，注解均需要再写一遍
     * @param userQueryReq
     * @return
     */
    @RequestMapping("/queryUser")
    public HttpResult<PageResult<List<UserDTO>>> queryUser(@Valid @RequestBody UserQueryReq userQueryReq) {
        log.info("provider 实现，userQueryReq is {}", userQueryReq);
        UserQueryCondition userQueryCondition = UserTransformer.convert(userQueryReq);
        // 按理，下面应该返回BO，这一层转化为DTO，上层是下层的使用方
        PageResult<List<UserDTO>> userDTOList = userService.queryUser(userQueryCondition);
        log.debug("查询userQueryReq：{}，对应的用户为：{}", userQueryReq, userDTOList);
        return HttpResult.success(userDTOList);
    }

    /**
           curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"name":"laoli", "pageNo":2,"pageSize":3}' "http://localhost:9999/statisticUser"

           curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"name":"laoli", "useMongo":true, "pageNo":2,"pageSize":3}' "http://localhost:9999/statisticUser"
     * @param userQueryReq
     * @return
     */
    @RequestMapping("/statisticUser")
    public HttpResult<List<UserStatisticDTO>> statisticUser(@Valid @RequestBody UserQueryReq userQueryReq) {
        log.info("provider 实现，userQueryReq is {}", userQueryReq);
        UserQueryCondition userQueryCondition = UserTransformer.convert(userQueryReq);
        List<UserStatisticDTO> userDTOList = userService.statisticUser(userQueryCondition);
        log.debug("查询userQueryCondition：{}，对应的用户为：{}", userQueryReq, userDTOList);
        return HttpResult.success(userDTOList);
    }

    /**
     * http://localhost:9991/getUserByName?name=%E5%B0%8F%E4%BA%94

     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{
     "condition":{
     "name":"laoli"
     },
     "changeItem":{
     "note":"hello world"
     }
     }' "http://localhost:9999/updateUser"


     * 注意，注解均需要再写一遍
     * @param userUpdateReq
     * @return
     */
    @PostMapping("/updateUser")
    public HttpResult<Long> updateUser(@Valid @RequestBody UserUpdateReq userUpdateReq) {
        log.info("provider 实现，userUpdateReq is {}", userUpdateReq);
        long res = userService.updateUser(userUpdateReq);
        log.debug("更新userUpdateReq：{}，结果：{}", userUpdateReq, res);
        return HttpResult.success(res);
    }

    /**
     * http://localhost:9991/insertUser?name=jessin&age=1&sex=1&note=test

     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"name":"laoli", "age":29, "sex": 1, "note":"i am m note"}' "http://localhost:9999/insertUser"

     * @param userDTO
     * @return
     */
    @RequestMapping("/insertUser")
    public HttpResult<UserDTO> insertUser(@Valid @RequestBody UserDTO userDTO) {
        boolean result = userService.insert(userDTO);
        log.info("插入用户：{}，结果为：{}", userDTO, result);
        return HttpResult.success(userDTO);
    }

    @RequestMapping("/timeout")
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
    public HttpResult<UserDTO> fail(String name) {
        log.info("provider 实现，fail:{}", name);
        throw new RuntimeException("fail");
    }
}
