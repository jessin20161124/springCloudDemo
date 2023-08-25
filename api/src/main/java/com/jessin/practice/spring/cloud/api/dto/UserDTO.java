package com.jessin.practice.spring.cloud.api.dto;

import lombok.Data;

import java.util.Date;

/**
 * @Author: jessin
 * @Date: 2022/2/10 8:40 下午
 */
@Data
public class UserDTO {
    private Long id;

    private String name;

    private Byte sex;

    private Integer age;

    private String note;

    private Date createTime;

    private Date lastModifiedTime;
}