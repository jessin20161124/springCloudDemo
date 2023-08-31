package com.jessin.practice.spring.cloud.api.dto.resp;

import lombok.Data;

@Data
public class ScrollResult<T> {
    private String scrollId;

    private T data;

    public static<T> ScrollResult<T> of(String scrollId, T data) {
        ScrollResult<T> scrollResult = new ScrollResult<>();
        scrollResult.setScrollId(scrollId);
        scrollResult.setData(data);
        return scrollResult;
    }
}
