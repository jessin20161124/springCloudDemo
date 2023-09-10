package com.jessin.practice.spring.cloud.common;

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
        httpResult.setErrorCode(ErrorEnum.SUCCESS.getCode());
        httpResult.setData(data);
        return httpResult;
    }

    public static <T> HttpResult<T> fail() {
        return fail(ErrorEnum.SERVER_ERROR);
    }

    public static <T> HttpResult<T> fail(String errorMsg) {
        HttpResult httpResult = new HttpResult();
        httpResult.setRet(false);
        httpResult.setErrorCode(ErrorEnum.SERVER_ERROR.getCode());
        httpResult.setErrorMsg(errorMsg);
        return httpResult;
    }

    public static <T> HttpResult<T> fail(IErrorCode errorEnum) {
        HttpResult httpResult = new HttpResult();
        httpResult.setRet(false);
        httpResult.setErrorCode(errorEnum.getCode());
        httpResult.setErrorMsg(errorEnum.getMessage());
        return httpResult;
    }

}
