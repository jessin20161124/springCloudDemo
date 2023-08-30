package com.jessin.practice.spring.cloud.api.dto.resp;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class OrderStatisticDTO {

    private Long storeId;

    private BigDecimal totalPayAmount;

    private BigDecimal maxPayAmount;

    private long count;
}
