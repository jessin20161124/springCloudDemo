package com.jessin.practice.spring.cloud.provider.es;

import com.google.common.collect.Lists;
import com.jessin.practice.spring.cloud.api.dto.resp.ScrollResult;
import com.jessin.practice.spring.cloud.common.JsonUtils;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.collections4.CollectionUtils;
import org.elasticsearch.action.admin.indices.create.CreateIndexRequest;
import org.elasticsearch.action.admin.indices.create.CreateIndexResponse;
import org.elasticsearch.action.delete.DeleteRequest;
import org.elasticsearch.action.delete.DeleteResponse;
import org.elasticsearch.action.get.GetRequest;
import org.elasticsearch.action.get.GetResponse;
import org.elasticsearch.action.index.IndexRequest;
import org.elasticsearch.action.index.IndexResponse;
import org.elasticsearch.action.search.*;
import org.elasticsearch.action.update.UpdateRequest;
import org.elasticsearch.action.update.UpdateResponse;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.unit.TimeValue;
import org.elasticsearch.common.xcontent.XContentType;
import org.elasticsearch.rest.RestStatus;
import org.elasticsearch.search.Scroll;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.builder.SearchSourceBuilder;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.jessin.practice.spring.cloud.provider.constant.EsIndexConstants.DEFAULT_TYPE;

/**
 * 新字段，无默认值。老数据没这个字段
 * https://zhuanlan.zhihu.com/p/159138736
 * todo spring-data-es如何集成，通过注解即可实现，也可以实现类似效果
 * todo head插件安装，查看es数据
 */
@Service
@Slf4j
public class ElasticSearchServiceImpl implements ElasticSearchOperation {

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
        log.info("总条数 {}", searchResponse.getHits().getTotalHits());
//        log.info("返回值 {}", JsonUtils.write(searchResponse));
        List<T> res = Lists.newArrayList();
        for (SearchHit searchHit : searchResponse.getHits().getHits()) {
            T one = JsonUtils.read(searchHit.getSourceAsString(), clazz);
            one.setVersion(searchHit.getVersion());
            res.add(one);
        }
        return res;
    }

    /**
     * https://blog.csdn.net/m0_51491702/article/details/124686633
     *
     * scroll查询，一般不会一下子查询所有，查询所有的话内存很能会爆，而是通过前端分批几次往下查询，每个scroll请求有时间限制，不能太久
     * 可以先查符合条件的条数，如果超过1万，则提示走scroll
     *
     * @param index
     * @param searchSourceBuilder
     * @param clazz
     * @return
     * @param <T>
     */
    @Override
    public <T extends EsDocument> ScrollResult<List<T>> scrollDocument(String index, SearchSourceBuilder searchSourceBuilder, String scrollId, Class<T> clazz) {
        SearchResponse searchResponse;
        if (searchSourceBuilder != null) {
            searchResponse = getfirstScrollSearchResponse(index, searchSourceBuilder);
        } else {
            searchResponse = getNextScrollSearchResponse(scrollId);
        }
        String retScrollId = searchResponse.getScrollId();
//        log.info("返回值 {}", JsonUtils.write(searchResponse));
        List<T> data = Lists.newArrayList();
        for (SearchHit searchHit : searchResponse.getHits().getHits()) {
            T one = JsonUtils.read(searchHit.getSourceAsString(), clazz);
            one.setVersion(searchHit.getVersion());
            data.add(one);
        }
        if (CollectionUtils.isEmpty(data)) {
            clearScroll(retScrollId);
        }
        log.info("总条数 {}", searchResponse.getHits().getTotalHits());
        ScrollResult<List<T>> scrollResult = new ScrollResult<>();
        scrollResult.setScrollId(retScrollId);
        scrollResult.setData(data);
        return scrollResult;
    }

    private SearchResponse getfirstScrollSearchResponse(String index, SearchSourceBuilder searchSourceBuilder) {
        SearchRequest searchRequest = new SearchRequest();
        searchRequest.indices(index);
        searchRequest.source(searchSourceBuilder);
        //设置查询超时时间
        Scroll scroll = new Scroll(TimeValue.timeValueMinutes(5L));
        searchRequest.scroll(scroll);
        SearchResponse searchResponse;
        try {
            searchResponse = restHighLevelClient.search(searchRequest, RequestOptions.DEFAULT);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        return searchResponse;
    }

    private SearchResponse getNextScrollSearchResponse(String scrollId) {
        //构造滚动查询条件
        SearchScrollRequest searchScrollRequest = new SearchScrollRequest(scrollId);
        //设置查询超时时间
        Scroll scroll = new Scroll(TimeValue.timeValueMinutes(5L));
        searchScrollRequest.scroll(scroll);
        SearchResponse searchResponse;
        try {
            //响应必须是上面的响应对象，需要对上一层进行覆盖
            searchResponse = restHighLevelClient.scroll(searchScrollRequest, RequestOptions.DEFAULT);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return searchResponse;
    }

    private boolean clearScroll(String scrollId) {
        // 清除滚动，否则影响下次查询
        ClearScrollRequest clearScrollRequest = new ClearScrollRequest();
        clearScrollRequest.addScrollId(scrollId);
        ClearScrollResponse clearScrollResponse = null;
        try {
            clearScrollResponse = restHighLevelClient.clearScroll(clearScrollRequest,RequestOptions.DEFAULT);
        } catch (IOException e) {
            log.error("滚动查询删除失败 ", e);
        }
        //清除滚动是否成功
        boolean succeeded = clearScrollResponse.isSucceeded();
        return succeeded;
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
}
