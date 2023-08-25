package com.jessin.practice.spring.cloud.api.dto.resp;

import lombok.Data;

import java.math.BigDecimal;

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

    // 发送状态
}
