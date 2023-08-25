package com.jessin.practice.spring.cloud.provider.service;

import com.google.common.base.Preconditions;
import com.jessin.practice.spring.cloud.api.dto.req.CreateOrderReq;
import com.jessin.practice.spring.cloud.common.IdGenerator;
import com.jessin.practice.spring.cloud.common.RandomIdGenerator;
import com.jessin.practice.spring.cloud.provider.bo.OrderBO;
import com.jessin.practice.spring.cloud.provider.entity.OrderDO;
import com.jessin.practice.spring.cloud.provider.entity.OrderDOExample;
import com.jessin.practice.spring.cloud.provider.mapper.OrderDOMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

@Service
@Slf4j
public class OrderService {

    @Resource
    private OrderDOMapper orderDOMapper;

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
        // 创建订单，
        boolean ok = orderDOMapper.insertSelective(orderDO) == 1;
        Preconditions.checkArgument(ok, "创建订单失败");
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
}
