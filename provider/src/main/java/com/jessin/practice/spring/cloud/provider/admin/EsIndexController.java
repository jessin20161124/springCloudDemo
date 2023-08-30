package com.jessin.practice.spring.cloud.provider.admin;


import com.jessin.practice.spring.cloud.api.HttpResult;
import com.jessin.practice.spring.cloud.api.dto.req.CreateOrderReq;
import com.jessin.practice.spring.cloud.api.dto.resp.CreateOrderResp;
import com.jessin.practice.spring.cloud.provider.es.ElasticSearchOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@Slf4j
public class EsIndexController {

    @Resource
    private ElasticSearchOperation elasticSearchOperation;

    /**
     * 返回值最好要复杂数据结构，以遍后续扩展
     curl -X POST -H "content-type: application/json;charset=utf-8" -d '{"storeId":124, "goodsIdList":[{"goodId":"g122","cartItemId": "cart1", "quantity": "1234"}]}' "http://localhost:9999/createOrder"
     * @param createOrderReq
     * @return
     */
    @PostMapping("/createIndex")
    public HttpResult<CreateOrderResp> createOrder(@Validated @RequestBody CreateOrderReq createOrderReq) {
        return null;
    }

}
