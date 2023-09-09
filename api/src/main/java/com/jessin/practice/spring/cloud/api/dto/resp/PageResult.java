package com.jessin.practice.spring.cloud.api.dto.resp;

import lombok.Data;

/**
 * 封装分页DTO，适配前端分页组件
 * @param <T>
 */
@Data
public class PageResult<T> {

    public PageResult() {
    }

    public PageResult(T data, long totalCnt, int pageIndex, int pageLimit) {
        this.data = data;
        this.totalCnt = totalCnt;
        this.pageIndex = pageIndex;
        this.pageLimit = pageLimit;
    }

    /**
     * 当前页数据
     */
    private T data;

    /**
     * 总条数
     */
    private long totalCnt;

    // 其实后面这两个，可以不需要，前端是知道的
    /**
     * 页码，从0开始
     */
    private int pageIndex;

    /**
     * 每页大小
     */
    private int pageLimit;

}
