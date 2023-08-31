package com.jessin.practice.spring.cloud.api.dto.req;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Data
public class OrderQueryCondition {
    private String orderNo;
    private String uid;
    private String remark;

    /**
     * 如果是scroll查询，只看这个参数
     * todo 是否可以再抽取个scroll req？
     */
    private String scrollId;
    /**
     * 备注模糊查询
     */
    private String remarkLike;
    /**
     * \@DateTimeFormat需要类路径有joda包才行
     * 这里写死使用jackson
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createTimeBegin;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createTimeEnd;

    /**
     * 页数，从1开始
     */
    @NotNull
    @Min(1)
    private Integer pageNo = 1;

    /**
     * 页面数量
     */
    @NotNull
    @Min(1)
    @Max(100)
    private Integer pageSize = 10;
}
