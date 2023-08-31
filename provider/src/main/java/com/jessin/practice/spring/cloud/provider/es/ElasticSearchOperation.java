package com.jessin.practice.spring.cloud.provider.es;


import com.jessin.practice.spring.cloud.api.dto.resp.ScrollResult;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.search.builder.SearchSourceBuilder;

import java.util.List;

public interface ElasticSearchOperation {
    boolean createIndex(CreateIndexReq createIndexReq);

    boolean createDocument(String index, EsDocument esDocument);

    <T extends EsDocument> T getDocument(String index, String id, Class<T> clazz);

    boolean updateDocument(String index, EsDocument esDocument);

    String deleteDocument(String index, String id);

    <T extends EsDocument> List<T> searchDocument(String index, SearchSourceBuilder searchSourceBuilder, Class<T> clazz);

    /**
     * searchSourceBuilder和scrollId只传递一个即可
     * @param index
     * @param searchSourceBuilder
     * @param scrollId
     * @param clazz
     * @return
     * @param <T>
     */
    <T extends EsDocument> ScrollResult<List<T>> scrollDocument(String index, SearchSourceBuilder searchSourceBuilder, String scrollId, Class<T> clazz);

    SearchResponse rawSearch(String index, SearchSourceBuilder searchSourceBuilder);
}
