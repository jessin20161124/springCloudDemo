package com.jessin.practice.spring.cloud.provider.es;

import lombok.Data;

import java.util.List;

@Data
public class CreateIndexReq {

    /**
     * 主分片数
     */
    private int numOfShards = 1;

    /**
     * 副本数
     */
    private int numOfReplicas = 1;

    /**
     * 索引名
     */
    private String index;

    private List<Entry> mappings;

    @Data
    public static class Entry {
        private String fieldName;
        private String type;
    }
}
