package com.jessin.practice.spring.cloud.provider.bo;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class OrderStatisticBO {
    private Long storeId;

    private BigDecimal totalPayAmount;

    private BigDecimal maxPayAmount;

    private long count;
}
