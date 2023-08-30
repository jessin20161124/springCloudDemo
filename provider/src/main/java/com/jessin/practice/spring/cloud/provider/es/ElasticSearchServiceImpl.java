package com.jessin.practice.spring.cloud.provider.es;

import com.google.common.collect.Lists;
import com.jessin.practice.spring.cloud.common.JsonUtils;
import lombok.extern.slf4j.Slf4j;
import org.elasticsearch.action.admin.indices.create.CreateIndexRequest;
import org.elasticsearch.action.admin.indices.create.CreateIndexResponse;
import org.elasticsearch.action.delete.DeleteRequest;
import org.elasticsearch.action.delete.DeleteResponse;
import org.elasticsearch.action.get.GetRequest;
import org.elasticsearch.action.get.GetResponse;
import org.elasticsearch.action.index.IndexRequest;
import org.elasticsearch.action.index.IndexResponse;
import org.elasticsearch.action.search.SearchRequest;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.action.update.UpdateRequest;
import org.elasticsearch.action.update.UpdateResponse;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.xcontent.XContentType;
import org.elasticsearch.rest.RestStatus;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.builder.SearchSourceBuilder;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 新字段，无默认值
 * https://zhuanlan.zhihu.com/p/159138736
 * todo spring-data-es如何集成，通过注解即可实现，也可以实现类似效果
 * todo head插件安装，查看es数据
 */
@Service
@Slf4j
public class ElasticSearchServiceImpl implements ElasticSearchOperation {

    private static final String DEFAULT_TYPE = "order";

    @Resource
    private RestHighLevelClient restHighLevelClient;

    @Override
    public boolean createIndex(CreateIndexReq createIndexReq) {
        CreateIndexRequest createIndexRequest = new CreateIndexRequest(createIndexReq.getIndex());
        createIndexRequest.settings(Settings.builder()
                .put("index.number_of_shards", createIndexReq.getNumOfShards())
                .put("index.number_of_replicas", createIndexReq.getNumOfReplicas())
        );

        Map mapping = new HashMap<>();
        for (CreateIndexReq.Entry entry : createIndexReq.getMappings()) {
            Map attribute = new HashMap();
            attribute.put("type", entry.getType());
            mapping.put(entry.getFieldName(), attribute);
        }

        Map properties = new HashMap<>();
        properties.put("properties", mapping);
        createIndexRequest.mapping(DEFAULT_TYPE, properties);
        CreateIndexResponse createIndexResponse = null;
        try {
            createIndexResponse = restHighLevelClient.indices().create(createIndexRequest, RequestOptions.DEFAULT);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return createIndexResponse.isAcknowledged();
    }

    @Override
    public boolean createDocument(String index, EsDocument esDocument) {
        // 从版本7.x开始，没有type这个概念
        // Date类型，存的是时间戳
        IndexRequest indexRequest = new IndexRequest(index)
                // 必须指定id，否则会自己生成，存在时会覆盖
                .id(esDocument.getDocId())
                .type(DEFAULT_TYPE)
                .source(JsonUtils.write(esDocument), XContentType.JSON);
        IndexResponse indexResponse;
        try {
            indexResponse = restHighLevelClient.index(indexRequest, RequestOptions.DEFAULT);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return indexResponse.status().equals(RestStatus.OK);
    }

    @Override
    public <T extends EsDocument> T getDocument(String index, String id, Class<T> clazz) {
        GetRequest getRequest = new GetRequest(index, DEFAULT_TYPE, id);
        getRequest.version();
        GetResponse getResponse;
        try {
            getResponse = restHighLevelClient.get(getRequest, RequestOptions.DEFAULT);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        if (getResponse.isExists()) {
            String sourceAsString = getResponse.getSourceAsString();
            T ret = JsonUtils.read(sourceAsString, clazz);
            ret.setVersion(getResponse.getVersion());
            return ret;
        } else {
            return null;
        }
    }

    /**
     * 使用版本号防止并发
     * @param index
     * @param esDocument
     * @return
     */
    @Override
    public boolean updateDocument(String index, EsDocument esDocument) {
        UpdateRequest updateRequest = new UpdateRequest(index, DEFAULT_TYPE, esDocument.getDocId());
        updateRequest.doc(JsonUtils.write(esDocument), XContentType.JSON);
        updateRequest.version(esDocument.getVersion());
        UpdateResponse updateResponse;
        try {
            updateResponse = restHighLevelClient.update(updateRequest, RequestOptions.DEFAULT);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return updateResponse.status().equals(RestStatus.OK);
    }

    @Override
    public String deleteDocument(String index, String id) {
        DeleteRequest deleteRequest = new DeleteRequest(index, DEFAULT_TYPE, id);
        DeleteResponse response;
        try {
            response = restHighLevelClient.delete(deleteRequest, RequestOptions.DEFAULT);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return response.getResult().name();
    }

    @Override
    public <T extends EsDocument> List<T> searchDocument(String index, SearchSourceBuilder searchSourceBuilder, Class<T> clazz) {
        SearchRequest searchRequest = new SearchRequest();
        searchRequest.indices(index);
        searchRequest.source(searchSourceBuilder);
        SearchResponse searchResponse;
        try {
            searchResponse = restHighLevelClient.search(searchRequest, RequestOptions.DEFAULT);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
//        log.info("返回值 {}", JsonUtils.write(searchResponse));
        List<T> res = Lists.newArrayList();
        for (SearchHit searchHit : searchResponse.getHits().getHits()) {
            T one = JsonUtils.read(searchHit.getSourceAsString(), clazz);
            one.setVersion(searchHit.getVersion());
            res.add(one);
        }
        return res;
    }

    @Override
    public SearchResponse rawSearch(String index, SearchSourceBuilder searchSourceBuilder) {
        SearchRequest searchRequest = new SearchRequest();
        searchRequest.indices(index);
        searchRequest.source(searchSourceBuilder);
        SearchResponse searchResponse;
        try {
            searchResponse = restHighLevelClient.search(searchRequest, RequestOptions.DEFAULT);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return searchResponse;
    }

    // todo scroll查询
}
