package com.jessin.practice.spring.cloud.provider.bo;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

@Data
public class OrderBO {
    private Long orderNo;

    private Long uid;

    private Long storeId;

    private BigDecimal totalAmount;

    private BigDecimal payAmount;

    private Byte orderStatus;

    private String remark;

    private String cancelReason;

    private Date createTime;

    private Date lastModifiedTime;

}
