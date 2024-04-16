package com.jessin.practice.spring.cloud.provider.infrastructure.es;

public interface EsDocument {
    String getDocId();

    long getVersion();

    void setVersion(long version);
}
