package com.jessin.practice.spring.cloud.provider.application.impl;

import com.google.common.base.Preconditions;
import com.jessin.practice.spring.cloud.api.dto.OrderMsg;
import com.jessin.practice.spring.cloud.api.dto.OrderOperationTypeEnum;
import com.jessin.practice.spring.cloud.api.dto.req.CreateOrderReq;
import com.jessin.practice.spring.cloud.common.IdGenerator;
import com.jessin.practice.spring.cloud.common.RandomIdGenerator;
import com.jessin.practice.spring.cloud.provider.domain.converter.OrderTransformer;
import com.jessin.practice.spring.cloud.provider.domain.entity.OrderDO;
import com.jessin.practice.spring.cloud.provider.domain.entity.OrderDOExample;
import com.jessin.practice.spring.cloud.provider.infrastructure.mapper.OrderDOMapper;
import com.jessin.practice.spring.cloud.provider.infrastructure.mq.RocketMqHelper;
import com.jessin.practice.spring.cloud.provider.application.OrderOperationService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.collections4.CollectionUtils;
import org.springframework.messaging.support.MessageBuilder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.TransactionSynchronizationAdapter;
import org.springframework.transaction.support.TransactionSynchronizationManager;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

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
public class OrderOperationServiceImpl implements OrderOperationService {

    @Resource
    private OrderDOMapper orderDOMapper;

    @Resource
    private RocketMqHelper rocketMqHelper;

    // 用随机数，避免冲突，雪花算法最后12bit在并发低的情况下是0
    private final static IdGenerator idGenerator = new RandomIdGenerator();

    /**
     * 这里传递req是否合适，是否传递BO？
     * todo 需要保证用户粒度幂等
     * @param createOrderReq
     * @return
     */
    @Transactional
    public String createOrder(CreateOrderReq createOrderReq) {
        OrderDO orderDO = new OrderDO();
        orderDO.setStoreId(createOrderReq.getStoreId());
        // todo 1. 从上下文拿到登陆uid信息，参数校验
        orderDO.setUid(345L);
        // todo tcc实现分布式事务，2. 先createOrder，设置不可见
        // todo 3. 风控校验、限购校验，计算总金额，需要支付的金额，运费，和传递回来的金额比较。冻结商品库存/优惠券/积分等
        orderDO.setTotalAmount(BigDecimal.valueOf(5.2));
        orderDO.setPayAmount(BigDecimal.valueOf(4.2));
        // todo orderNo中最后10位，取自userid，保证根据userId也能找到具体的数据源，最常见的也是最实时的查询方式，其他查询方式通过es查询
        long orderNo = idGenerator.nextId();
        log.info("orderNo: {}", orderNo);
        orderDO.setOrderNo(orderNo);
        // todo 保存商品快照，清空购物车
        // todo 枚举，待支付状态
        orderDO.setOrderStatus((byte)0);
        Date now = getNow();
        // 时间在代码中生成，更加灵活
        orderDO.setCreateTime(now);
        orderDO.setLastModifiedTime(now);
        orderDO.setRemark(createOrderReq.getRemark());
        orderDO.setCancelReason(createOrderReq.getCancelReason());
        // todo 4. 前面都成功了，创建订单，设置可见；否则回滚前面的动作。
        boolean ok = orderDOMapper.insertSelective(orderDO) == 1;
        Preconditions.checkArgument(ok, "创建订单失败");

        // 事务提交成功，发送rocketmq消息
        sendOrderMsg(OrderOperationTypeEnum.INIT, orderDO);
        sendDelayOrderMsg(orderDO);
        return String.valueOf(orderDO.getOrderNo());
    }

    /**
     * 去除毫秒，存到db里不会存毫秒，可能会进位，导致跟内存里的不一致
     * @return
     */
    private Date getNow() {
        return new Date(System.currentTimeMillis() / 1000 * 1000);
    }

    @Transactional
    public boolean cancelOrder(String orderNo) {
        OrderDOExample orderDOExample = new OrderDOExample();
        OrderDOExample.Criteria criteria = orderDOExample.or();
        criteria.andOrderNoEqualTo(Long.parseLong(orderNo));
        List<OrderDO> list = orderDOMapper.selectByExample(orderDOExample);
        Preconditions.checkArgument(CollectionUtils.isNotEmpty(list), "db订单不存在: " + orderNo);
        Preconditions.checkArgument(list.get(0).getOrderStatus() == 0, "db订单状态非法: " + orderNo);


        OrderDO updated = new OrderDO();
        // db取消状态，这里可能有并发问题，需要加乐观锁或者悲观锁
        updated.setOrderStatus((byte)1);
        OrderDOExample updateExample = new OrderDOExample();
        OrderDOExample.Criteria criteria2 = updateExample.or();
        criteria2.andOrderNoEqualTo(Long.parseLong(orderNo));
        criteria2.andOrderStatusEqualTo((byte)0);
        int ret = orderDOMapper.updateByExampleSelective(updated, updateExample);

        list.get(0).setOrderStatus((byte)1);
        sendOrderMsg(OrderOperationTypeEnum.USER_CANCEL, list.get(0));
        return ret == 1;
    }

    /**
     * https://cloud.tencent.com/developer/article/1497715
     * @param operationTypeEnum
     * @param orderDO
     */
    private void sendOrderMsg(OrderOperationTypeEnum operationTypeEnum, OrderDO orderDO) {
        TransactionSynchronizationManager.registerSynchronization(new TransactionSynchronizationAdapter() {
            @Override
            public void afterCommit() {
                log.info("事务提交，发送rocketmq消息 {}", orderDO);
                // 如果走公网，延迟会比较大，默认超时时间是3秒，这里设置大点。
                // 理论上，服务器和中间件，必须在同一个局域网中，否则延迟会很高
                OrderMsg orderMsg = OrderTransformer.convert(orderDO);
                orderMsg.setOperationType(operationTypeEnum.getCode());
                rocketMqHelper.syncSendOrderly("ORDER_ADD", MessageBuilder.withPayload(orderMsg).build(),
                        orderMsg.getOrderNo(), 30000);
            }
        });
    }

    private void sendDelayOrderMsg(OrderDO orderDO) {
        TransactionSynchronizationManager.registerSynchronization(new TransactionSynchronizationAdapter() {
            @Override
            public void afterCommit() {
                log.info("事务提交，发送rocketmq消息 {}", orderDO);
                // 如果走公网，延迟会比较大，默认超时时间是3秒，这里设置大点。
                // 理论上，服务器和中间件，必须在同一个局域网中，否则延迟会很高
                orderDO.setOrderStatus((byte)2);
                OrderMsg orderMsg = OrderTransformer.convert(orderDO);
                orderMsg.setOperationType(OrderOperationTypeEnum.TIMEOUT_CANCEL.getCode());
                // 18个延迟级别，对应18个队列，这里放到队列4中
                // 1s 5s 10s 30s 1min 2min 3min 4min 5min 6min 7min 8min 9min 10min 20min 30min 1h 2h
                rocketMqHelper.syncSendDelay("ORDER_ADD", MessageBuilder.withPayload(orderMsg).build(), 30000, 5);
            }
        });
    }

}
