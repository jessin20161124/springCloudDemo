package com.jessin.practice.spring.cloud.api.dto.resp;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

@Data
public class OrderDTO {
    private String orderNo;

    private Long uid;

    private String userName;

    private Long storeId;

    private String storeName;

    private BigDecimal totalAmount;

    private BigDecimal payAmount;

    private Byte orderStatus;

    private String orderStatusDesc;

    private String remark;

    private String cancelReason;
    // 返回时间格式化

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createTime;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date lastModifiedTime;

    // 发送状态
}
