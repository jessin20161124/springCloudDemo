package com.jessin.practice.spring.cloud.provider.bo;

import lombok.Data;

/**
 * 面向内部查询，如果直接复用UserQueryReq，则可能有外部专门使用的字段或者内部专门使用的字段，比较混乱
 *
 */
@Data
public class UserQueryCondition {
    private Object id;
    private String name;
    private boolean useMongo;

    /**
     * 页数，从1开始
     */
    private Integer pageNo;

    /**
     * 页面数量
     */
    private Integer pageSize;

    public int getOffset() {
        return (pageNo - 1) * pageSize;
    }
}
