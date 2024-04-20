package com.jessin.practice.spring.cloud.provider.infrastructure.mq;

import com.jessin.practice.spring.cloud.provider.domain.constant.common;
import lombok.extern.slf4j.Slf4j;
import org.apache.rocketmq.spring.annotation.RocketMQTransactionListener;
import org.apache.rocketmq.spring.core.RocketMQLocalTransactionListener;
import org.apache.rocketmq.spring.core.RocketMQLocalTransactionState;
import org.springframework.messaging.Message;
import org.springframework.stereotype.Component;

import java.util.function.Function;

/**
 *
 * 事务消息：https://blog.csdn.net/weixin_44606481/article/details/129903032}
 */
@RocketMQTransactionListener
@Component
@Slf4j
public class TransactionMessageListener implements RocketMQLocalTransactionListener {

    // 事务消息共有三种状态，提交状态、回滚状态、中间状态：
    // RocketMQLocalTransactionState.COMMIT: 提交事务，它允许消费者消费此消息。
    // RocketMQLocalTransactionState.ROLLBACK: 回滚事务，它代表该消息将被删除，不允许被消费。
    // RocketMQLocalTransactionState.UNKNOWN: 中间状态，它代表需要检查消息队列来确定状态。

    /**
     * 执行本地事务（在发送消息成功时执行）
     */
    @Override
    public RocketMQLocalTransactionState executeLocalTransaction(Message message, Object o) {
        // 1、获取事务ID
        String transactionId = null;
        try {
            transactionId = message.getHeaders().get(common.TRANSACTION_ID).toString();
            log.info("执行本地事务 transactionId={}", transactionId);
            // 2、判断传入函数对象是否为空，如果为空代表没有要执行的业务直接抛弃消息
            if (o == null) {
                //返回ROLLBACK状态的消息会被丢弃
                log.info("事务消息回滚，没有需要处理的业务 transactionId={}", transactionId);
                return RocketMQLocalTransactionState.ROLLBACK;
            }
            // 将Object o转换成Function对象
            Function<String, Boolean> function = (Function<String, Boolean>) o;
            // 执行业务 事务也会在function.apply中执行
            Boolean apply = function.apply(transactionId);
            if (apply) {
                log.info("事务提交，消息正常处理 transactionId={}", transactionId);
                //返回COMMIT状态的消息会立即被消费者消费到
                return RocketMQLocalTransactionState.COMMIT;
            }
            log.info("事务消息回滚，业务本地事务执行失败回滚事务消息 transactionId={}", transactionId);
            //返回ROLLBACK状态的消息会被丢弃
        } catch (Exception e) {
            log.error("出现异常 返回ROLLBACK transactionId={}, msg:{} ", transactionId, e.getMessage(), e);
            return RocketMQLocalTransactionState.ROLLBACK;
        }
        return RocketMQLocalTransactionState.ROLLBACK;
    }

    /**
     * 检查本地事务的状态
     * 回查间隔时间：系统默认每隔60秒发起一次定时任务，对未提交的半事务消息进行回查，共持续12小时。
     * 第一次消息回查最快
     */
    @Override
    public RocketMQLocalTransactionState checkLocalTransaction(Message message) {
        String transactionId = message.getHeaders().get("__transactionId__").toString();
        log.info("检查本地事务状态，transactionId：{}", transactionId);
        // 以事务ID为查询条件，查询本地事务执行情况
        if (isSuccess(transactionId)) {
            return RocketMQLocalTransactionState.COMMIT;
        }
        return RocketMQLocalTransactionState.ROLLBACK;
    }

    // 模拟查询本地事务状态
    private boolean isSuccess(String transactionId) {
        // 查询数据库 select from 签到记录表
        return true;
    }
}