package com.jessin.practice.spring.cloud.api.dto.req;

import lombok.Data;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

/**
 * 面向外部查询，有校验，不暴露实现细节
 * 入参，一般用Req后缀或者Param后缀，todo 查看ali的命名规范，黄山版
 */
@Data
public class UserQueryReq {
    private String id;
    private Long longId;
    private String name;
    private boolean useMongo;

    /**
     * 页数，从1开始
     */
    @NotNull
    @Min(value = 1, message = "页码必须从1开始")
    private Integer pageNo = 1;

    /**
     * 页面数量
     */
    @NotNull
    @Min(value = 1, message = "页大小必须为[1,100]")
    @Max(value = 100, message = "页大小必须为[1,100]")
    private Integer pageSize = 10;

    public int getOffset() {
        return (pageNo - 1) * pageSize;
    }
}
