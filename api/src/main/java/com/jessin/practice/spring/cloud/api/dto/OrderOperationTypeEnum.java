package com.jessin.practice.spring.cloud.api.dto;

import lombok.Getter;

import java.util.HashMap;
import java.util.Map;

@Getter
public enum OrderOperationTypeEnum {

    INIT(0, "创建订单"),
    PAY(1, "支付订单"),
    USER_CANCEL(2, "用户取消订单"),
    TIMEOUT_CANCEL(3, "超时取消订单")
    ;

    private static final Map<Integer, OrderOperationTypeEnum> code2Enum = new HashMap<>();

    static {
        for (OrderOperationTypeEnum orderOperationTypeEnum : OrderOperationTypeEnum.values()) {
            code2Enum.put(orderOperationTypeEnum.code, orderOperationTypeEnum);
        }
    }

    private int code;
    private String message;

    OrderOperationTypeEnum(int code, String message) {
        this.code = code;
        this.message = message;
    }

    public static OrderOperationTypeEnum codeOf(int code) {
        return code2Enum.get(code);
    }
}
