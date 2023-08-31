package com.jessin.practice.spring.cloud.provider.service;

import com.google.common.base.Preconditions;
import com.jessin.practice.spring.cloud.api.dto.req.CreateOrderReq;
import com.jessin.practice.spring.cloud.api.dto.req.OrderQueryCondition;
import com.jessin.practice.spring.cloud.api.dto.resp.ScrollResult;
import com.jessin.practice.spring.cloud.common.IdGenerator;
import com.jessin.practice.spring.cloud.common.RandomIdGenerator;
import com.jessin.practice.spring.cloud.provider.bo.OrderBO;
import com.jessin.practice.spring.cloud.provider.bo.OrderStatisticBO;
import com.jessin.practice.spring.cloud.provider.constant.EsIndexConstants;
import com.jessin.practice.spring.cloud.provider.entity.OrderDO;
import com.jessin.practice.spring.cloud.provider.entity.OrderDOExample;
import com.jessin.practice.spring.cloud.provider.es.ElasticSearchOperation;
import com.jessin.practice.spring.cloud.provider.mapper.OrderDOMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang.StringUtils;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.index.query.*;
import org.elasticsearch.search.aggregations.AggregationBuilder;
import org.elasticsearch.search.aggregations.AggregationBuilders;
import org.elasticsearch.search.aggregations.Aggregations;
import org.elasticsearch.search.aggregations.bucket.terms.Terms;
import org.elasticsearch.search.aggregations.metrics.max.Max;
import org.elasticsearch.search.aggregations.metrics.sum.Sum;
import org.elasticsearch.search.aggregations.metrics.valuecount.ValueCount;
import org.elasticsearch.search.builder.SearchSourceBuilder;
import org.elasticsearch.search.sort.FieldSortBuilder;
import org.elasticsearch.search.sort.SortBuilder;
import org.elasticsearch.search.sort.SortOrder;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

/**
  手动创建字段。如果是新的字段，数据会存起来，但是作为查询条件时查不出来（也就是不会进行索引，分词），作为排序字段时会报错
 curl -X PUT -H "content-type: application/json" 'http://101.43.195.208:9200/order_info' -d '{
 "settings":{
 "number_of_replicas":"1",
 "number_of_shards":"5"
 },
 "mappings":{
 "order":{
 "_all":{
 "enabled":false
 },
 "dynamic":"false",
 "properties":{
 "id":{
 "type":"long"
 },
 "orderNo":{
 "type":"long"
 },
 "orderStatus":{
 "type":"long"
 },
 "payAmount":{
 "type":"float"
 },
 "storeId":{
 "type":"long"
 },
 "totalAmount":{
 "type":"float"
 },
 "uid":{
 "type":"long"
 }
 }
 }
 }
 }'
 */
@Service
@Slf4j
public class OrderService {

    @Resource
    private OrderDOMapper orderDOMapper;

    @Resource
    private ElasticSearchOperation elasticSearchOperation;

    // 用随机数，避免冲突，雪花算法最后12bit在并发低的情况下是0
    private final static IdGenerator idGenerator = new RandomIdGenerator();

    /**
     * 这里传递req是否合适，是否传递BO？
     * todo 需要保证用户粒度幂等
     * @param createOrderReq
     * @return
     */
    public String createOrder(CreateOrderReq createOrderReq) {
        OrderDO orderDO = new OrderDO();
        orderDO.setStoreId(createOrderReq.getStoreId());
        // todo 从上下文拿到登陆uid信息
        orderDO.setUid(123L);
        // todo 计算总金额，需要支付的金额，运费，和传递回来的金额比较。冻结商品库存/优惠券/积分等
        orderDO.setTotalAmount(BigDecimal.valueOf(5.2));
        orderDO.setPayAmount(BigDecimal.valueOf(4.2));
        long orderNo = idGenerator.nextId();
        log.info("orderNo: {}", orderNo);
        orderDO.setOrderNo(orderNo);
        // todo 保存商品快照
        // todo 枚举，待支付状态
        orderDO.setOrderStatus((byte)0);
        orderDO.setCreateTime(new Date());
        orderDO.setLastModifiedTime(new Date());
        orderDO.setRemark(createOrderReq.getRemark());
        orderDO.setCancelReason(createOrderReq.getCancelReason());
        // 创建订单，
        boolean ok = orderDOMapper.insertSelective(orderDO) == 1;
        Preconditions.checkArgument(ok, "创建订单失败");
        // todo 改成异步
        elasticSearchOperation.createDocument(EsIndexConstants.ORDER_INFO_INDEX, orderDO);
        return String.valueOf(orderDO.getOrderNo());
    }

    /**
     * 这种mapper比较通用，需要判断空，代码层面拼接sql，变化的是代码层面
     * 也可以放到mapper里，但是mapper需要明确写出有哪些字段作为查询条件，判断空
     * @param orderNo
     * @return
     */
    public Optional<OrderBO> selectOrder(String orderNo) {
        OrderDOExample orderDOExample = new OrderDOExample();
        OrderDOExample.Criteria criteria = orderDOExample.or();
        criteria.andOrderNoEqualTo(Long.parseLong(orderNo));
        List<OrderDO> list = orderDOMapper.selectByExample(orderDOExample);
        return list.stream().findFirst().map(orderDO -> {
            OrderBO orderBO = new OrderBO();
            BeanUtils.copyProperties(orderDO, orderBO);
            return orderBO;
        });
    }

    public boolean cancelOrder(String orderNo) {
        OrderDOExample orderDOExample = new OrderDOExample();
        OrderDOExample.Criteria criteria = orderDOExample.or();
        criteria.andOrderNoEqualTo(Long.parseLong(orderNo));
        List<OrderDO> list = orderDOMapper.selectByExample(orderDOExample);
        Preconditions.checkArgument(CollectionUtils.isNotEmpty(list), "db订单不存在: " + orderNo);
        Preconditions.checkArgument(list.get(0).getOrderStatus() == 0, "es订单状态非法: " + orderNo);

        OrderDO updated = new OrderDO();
        // db取消状态，这里可能有并发问题，需要加乐观锁或者悲观锁
        updated.setOrderStatus((byte)1);
        OrderDOExample updateExample = new OrderDOExample();
        OrderDOExample.Criteria criteria2 = updateExample.or();
        criteria2.andOrderNoEqualTo(Long.parseLong(orderNo));
        int ret = orderDOMapper.updateByExampleSelective(updated, updateExample);
        return ret == 1 && updateEsOrderStatus(orderNo);
    }

    /**
     * 异步更新，重试。这里使用了es乐观锁，版本概念更新
     * @param orderNo
     * @return
     */
    private boolean updateEsOrderStatus(String orderNo) {
        OrderDO esOrder = elasticSearchOperation.getDocument(EsIndexConstants.ORDER_INFO_INDEX, orderNo, OrderDO.class);

        Preconditions.checkNotNull(esOrder, "es订单不存在: " + orderNo);
        Preconditions.checkArgument(esOrder.getOrderStatus() == 0, "es订单状态非法: " + orderNo);
        esOrder.setOrderStatus((byte)1);
        boolean ret = elasticSearchOperation.updateDocument(EsIndexConstants.ORDER_INFO_INDEX, esOrder);
        return ret;
    }

    /**
     * es搜索，dsl语句
     * https://mp.weixin.qq.com/s/SHHwh-1iPhfOv7qrqWVRJw
     *
     * https://juejin.cn/post/7034687491831496741
     *
     * query -> bool -> (must/must_not/should)
     * must -> and
     * must_not -> not
     * should -> or
     *
     * term(=)/terms(in)/range不会对输入条件进行分词，相当于某个字段精准查询
     * match/match_phrase会对输入进行分词，然后精准匹配
     *
     *
     * @param orderQueryCondition
     * @return
     */
    public List<OrderBO> searchOrder(OrderQueryCondition orderQueryCondition) {

        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();

        // todo nested查询
        BoolQueryBuilder boolQueryBuilder = transform2BoolQueryBuilder(orderQueryCondition);

        searchSourceBuilder.query(boolQueryBuilder);

        // 按照创建时间降序
        SortBuilder sortBuilder = new FieldSortBuilder("createTime");
        sortBuilder.order(SortOrder.DESC);
        searchSourceBuilder.sort(sortBuilder);

        // 默认不写，es只返回10条，默认from + size > 10000，es会报错。注意深分页问题
        if (orderQueryCondition.getPageNo() != null && orderQueryCondition.getPageSize() != null) {
            // offset
            searchSourceBuilder.from((orderQueryCondition.getPageNo() - 1) * orderQueryCondition.getPageSize());
            searchSourceBuilder.size(orderQueryCondition.getPageSize());
        }
        // 只返回需要的字段，不指定的话返回所有
//        String[] retFields = new String[]{"orderNo", "uid"};
//        String[] excludeFields = new String[]{};
//        searchSourceBuilder.fetchSource(retFields, excludeFields);
        List<OrderDO> list = elasticSearchOperation.searchDocument(EsIndexConstants.ORDER_INFO_INDEX, searchSourceBuilder, OrderDO.class);
        return list.stream().map(orderDO -> {
            OrderBO orderBO = new OrderBO();
            BeanUtils.copyProperties(orderDO, orderBO);
            return orderBO;
        }).collect(Collectors.toList());
    }

    public ScrollResult<List<OrderBO>> scrollOrder(OrderQueryCondition orderQueryCondition) {

        SearchSourceBuilder searchSourceBuilder = null;

        if (StringUtils.isBlank(orderQueryCondition.getScrollId())) {
            searchSourceBuilder = new SearchSourceBuilder();
            // todo nested查询
            BoolQueryBuilder boolQueryBuilder = transform2BoolQueryBuilder(orderQueryCondition);

            searchSourceBuilder.query(boolQueryBuilder);

            // 按照创建时间降序
            SortBuilder sortBuilder = new FieldSortBuilder("createTime");
            sortBuilder.order(SortOrder.DESC);
            searchSourceBuilder.sort(sortBuilder);

            // 默认不写，es只返回10条，默认from + size > 10000，es会报错
            if (orderQueryCondition.getPageNo() != null && orderQueryCondition.getPageSize() != null) {
                // offset
                searchSourceBuilder.from((orderQueryCondition.getPageNo() - 1) * orderQueryCondition.getPageSize());
                searchSourceBuilder.size(orderQueryCondition.getPageSize());
            }
            // 只返回需要的字段，不指定的话返回所有
//        String[] retFields = new String[]{"orderNo", "uid"};
//        String[] excludeFields = new String[]{};
//        searchSourceBuilder.fetchSource(retFields, excludeFields);
        }

        ScrollResult<List<OrderDO>> scrollResult = elasticSearchOperation.scrollDocument(EsIndexConstants.ORDER_INFO_INDEX, searchSourceBuilder, orderQueryCondition.getScrollId(), OrderDO.class);
        List<OrderBO> list = scrollResult.getData().stream().map(orderDO -> {
            OrderBO orderBO = new OrderBO();
            BeanUtils.copyProperties(orderDO, orderBO);
            return orderBO;
        }).collect(Collectors.toList());
        return ScrollResult.of(scrollResult.getScrollId(), list);
    }

    /**
     *
     * 查询符合条件的条数，不需要group by
     *
     * elasticsearch版本7.x如果查询的结果大于1w条，则在hit.total上的总数只是返回1w？
     *
     * https://mp.weixin.qq.com/s/0h4qzSvhkKrLgLQh59dk7Q
     *
     * cardinality -> distinct
     *
     * 统计每个门店的订单个数和支付金额，例如今天的
     select storeId, count(storeId), sum(payAmount) as totalPayAmount,max(payAmount)  as maxPayAmount
     from order_info
     where xxx group by storeId
     *
     * @param orderQueryCondition
     * @return
     */
    public long countOrder(OrderQueryCondition orderQueryCondition) {

        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();

        BoolQueryBuilder boolQueryBuilder = transform2BoolQueryBuilder(orderQueryCondition);
        searchSourceBuilder.query(boolQueryBuilder);
        // 不返回数据内容
        searchSourceBuilder.size(0);
        // terms/sum名词不重要，重要的是field
        AggregationBuilder aggregationBuilder = AggregationBuilders.count("cnt").field("storeId");
        // 可以有多个聚合
        searchSourceBuilder.aggregation(aggregationBuilder);

        SearchResponse searchResponse = elasticSearchOperation.rawSearch(EsIndexConstants.ORDER_INFO_INDEX, searchSourceBuilder);
        Aggregations aggregations = searchResponse.getAggregations();
        ValueCount byStoreIdAggregation = aggregations.get("cnt");
        long cnt = byStoreIdAggregation.getValue();
        log.info("count条数 {}", cnt);
        return cnt;
    }

    /**
     *
     * es聚合
     * https://mp.weixin.qq.com/s/0h4qzSvhkKrLgLQh59dk7Q
     *
     * cardinality -> distinct
     *
     * 统计每个门店的订单个数和支付金额，例如今天的
     select storeId, count(storeId), sum(payAmount) as totalPayAmount,max(payAmount)  as maxPayAmount
     from order_info
     where xxx group by storeId
     *
     * @param orderQueryCondition
     * @return
     */
    public List<OrderStatisticBO> statisticOrder(OrderQueryCondition orderQueryCondition) {

        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();

        BoolQueryBuilder boolQueryBuilder = transform2BoolQueryBuilder(orderQueryCondition);
        searchSourceBuilder.query(boolQueryBuilder);
        // 不需要返回hit数据
        searchSourceBuilder.size(0);

        // terms/sum名词不重要，重要的是field
        AggregationBuilder aggregationBuilder = AggregationBuilders.terms("byStoreId")
                .field("storeId")
                .subAggregation(AggregationBuilders.sum("totalPayAmount").field("payAmount"))
                .subAggregation(AggregationBuilders.max("maxPayAmount").field("payAmount"));
        // 可以有多个聚合
        searchSourceBuilder.aggregation(aggregationBuilder);


        SearchResponse searchResponse = elasticSearchOperation.rawSearch(EsIndexConstants.ORDER_INFO_INDEX, searchSourceBuilder);
        Aggregations aggregations = searchResponse.getAggregations();
        // 按照门店聚合的bucket
        Terms byStoreIdAggregation = aggregations.get("byStoreId");
        List<OrderStatisticBO> orderStatisticBOS = new ArrayList<>();
        for (Terms.Bucket buck : byStoreIdAggregation.getBuckets()) {
            OrderStatisticBO orderStatisticBO = new OrderStatisticBO();
            orderStatisticBO.setStoreId(Long.valueOf(buck.getKeyAsString()));
            orderStatisticBO.setCount(buck.getDocCount());
            // 获取子聚合
            Sum sum = buck.getAggregations().get("totalPayAmount");
            orderStatisticBO.setTotalPayAmount(BigDecimal.valueOf(sum.getValue()));
            Max max = buck.getAggregations().get("maxPayAmount");
            orderStatisticBO.setMaxPayAmount(BigDecimal.valueOf(max.getValue()));
            orderStatisticBOS.add(orderStatisticBO);
        }
        return orderStatisticBOS;
    }

    private static BoolQueryBuilder transform2BoolQueryBuilder(OrderQueryCondition orderQueryCondition) {
        BoolQueryBuilder boolQueryBuilder = new BoolQueryBuilder();
        if (StringUtils.isNotBlank(orderQueryCondition.getOrderNo())) {
            TermQueryBuilder queryBuilder = QueryBuilders.termQuery("orderNo", orderQueryCondition.getOrderNo());
            boolQueryBuilder.must(queryBuilder);
        }

        if (StringUtils.isNotBlank(orderQueryCondition.getUid())) {
            TermQueryBuilder queryBuilder = QueryBuilders.termQuery("uid", orderQueryCondition.getUid());
            boolQueryBuilder.must(queryBuilder);
        }

        if (orderQueryCondition.getCreateTimeBegin() != null) {
            // 查询某个时间段
            RangeQueryBuilder queryBuilder = QueryBuilders.rangeQuery("createTime");
            queryBuilder.gte(orderQueryCondition.getCreateTimeBegin().getTime());
            boolQueryBuilder.must(queryBuilder);
        }

        if (orderQueryCondition.getCreateTimeEnd() != null) {
            // 字段名必须跟es中的一致
            RangeQueryBuilder queryBuilder = QueryBuilders.rangeQuery("createTime");
            queryBuilder.lte(orderQueryCondition.getCreateTimeEnd().getTime());
            boolQueryBuilder.must(queryBuilder);
        }

        // remark这个字段会进行分词，这里需要指定keyword后缀，表示精准匹配
        if (StringUtils.isNotBlank(orderQueryCondition.getRemark())) {
            TermQueryBuilder queryBuilder = QueryBuilders.termQuery("remark.keyword", orderQueryCondition.getRemark());
            boolQueryBuilder.must(queryBuilder);
        }

        //  类似模糊查询，全文检索
        // todo 测试下两个should
        if (StringUtils.isNotBlank(orderQueryCondition.getRemarkLike())) {
            // 这里会对remark进行分词，然后精准匹配。例如"hello ,, ,world"，分词后为hello和world，只要包含任意一个单词即可，跟顺序和空格没有关系
            // 默认英文是按照英文的标点符号分词，中文是分割为一个一个字符。例如“中文”，分词后为中和文，只要包含任意一个中文字符即可。比较好的中文分词器是ik
            // 某个字段分词，写入时有一定的性能损耗。如果不需要分词可以设置类型为keyword
            // 分词器：https://zhuanlan.zhihu.com/p/132597047

            MatchQueryBuilder matchQueryBuilder = new MatchQueryBuilder("remark", orderQueryCondition.getRemarkLike());
            boolQueryBuilder.should(matchQueryBuilder);
        }
        return boolQueryBuilder;
    }
}
