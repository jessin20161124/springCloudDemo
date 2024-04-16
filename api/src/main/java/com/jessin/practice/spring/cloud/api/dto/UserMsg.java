package com.jessin.practice.spring.cloud.api.dto;

import lombok.Data;

import java.util.Date;

@Data
public class UserMsg {

    private int operationType;

    private Long id;

    private String name;

    private Byte sex;

    private Integer age;

    private String note;

    private Date createTime;

    private Date lastModifiedTime;
}
