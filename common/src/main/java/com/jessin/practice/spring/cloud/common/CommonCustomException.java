package com.jessin.practice.spring.cloud.common;

import lombok.Getter;

/**
 * 扩展运行时异常，增加错误码
 */
@Getter
public class CommonCustomException extends RuntimeException implements IErrorCode {

    private int code;

    public CommonCustomException() {
        super();
    }

    public CommonCustomException(int code, String msg) {
        super(msg);
        this.code = code;
    }

    public CommonCustomException(int code, String msg, Throwable throwable) {
        super(msg, throwable);
        this.code = code;
    }

    public CommonCustomException(int code, Throwable throwable) {
        super(throwable);
        this.code = code;
    }

}
