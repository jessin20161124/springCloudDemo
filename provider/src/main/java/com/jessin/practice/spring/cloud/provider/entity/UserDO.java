package com.jessin.practice.spring.cloud.provider.entity;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;

import java.util.Date;

@Document(collection = "user")
@Data
public class UserDO {
    /**
     * todo mongo id指定不生效，这里使用的是id，如果赋值了的话。应该是命名冲突了
     */
    @Field("dbId")
    private Long id;

    /**
     * 指定唯一键
     */
    @Id
    private Long userId;

    private String name;

    private Byte sex;

    private Integer age;

    private String note;

    private Date createTime;

    private Date lastModifiedTime;
}