package com.jessin.practice.spring.cloud.api.dto.req;

import lombok.Data;

import javax.validation.constraints.NotNull;

/**
 * 面向外部查询，有校验，不暴露实现细节
 */
@Data
public class UserUpdateReq {

    @NotNull
    private Condition condition;

    @NotNull
    private ChangeItem changeItem;

    @Data
    public static class Condition {
        private Long id;
        private String name;
        private Integer age;
    }

    @Data
    public static class ChangeItem {
        private String name;
        private Integer age;
        private String note;
    }
}
