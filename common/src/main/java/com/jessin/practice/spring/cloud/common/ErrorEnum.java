package com.jessin.practice.spring.cloud.common;

/**
 * todo 常见错误码定义，规划客户端错误和服务端错误
 *
 */
public enum ErrorEnum implements IErrorCode {

    SUCCESS(200, "请求成功"),
    PARAMETER_ERROR(401, "请求参数有误"),
    SERVER_ERROR(500, "服务器内部错误");

    private int code;
    private String message;

    ErrorEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    public int getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }

}
