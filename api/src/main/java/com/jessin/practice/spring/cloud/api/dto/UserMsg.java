package com.jessin.practice.spring.cloud.api.dto;

import lombok.Data;

import java.util.Date;

@Data
public class UserMsg {

    private int operationType;

    /**
     * mongo id指定不生效，这里使用的是id，如果赋值了的话。应该是命名冲突了
     */
    private Long id;

    /**
     * 指定唯一键
     */
    private Long userId;

    private String name;

    private Byte sex;

    private Integer age;

    private String note;

    private Date createTime;

    private Date lastModifiedTime;
}
