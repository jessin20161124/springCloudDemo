package com.jessin.practice.spring.cloud.provider.bo;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class OrderBO {
    private Long orderNo;

    private Long uid;

    private Long storeId;

    private BigDecimal totalAmount;

    private BigDecimal payAmount;

    private Byte orderStatus;

}
