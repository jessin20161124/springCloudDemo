package com.jessin.practice.spring.cloud.api;

import lombok.Data;

@Data
public class HttpResult<T> {
    private boolean ret;

    private T data;

    private int errorCode;

    private String errorMsg;

    public static <T> HttpResult<T> success(T data) {
        HttpResult httpResult = new HttpResult();
        httpResult.setRet(true);
        httpResult.setErrorCode(200);
        httpResult.setData(data);
        return httpResult;
    }

    public static <T> HttpResult<T> fail(String errorMsg) {
        HttpResult httpResult = new HttpResult();
        httpResult.setRet(false);
        httpResult.setErrorCode(500);
        httpResult.setErrorMsg(errorMsg);
        return httpResult;
    }
}
