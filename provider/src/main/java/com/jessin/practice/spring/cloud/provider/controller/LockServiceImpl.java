package com.jessin.practice.spring.cloud.provider.controller;

import lombok.extern.slf4j.Slf4j;
import org.redisson.api.RLock;
import org.redisson.api.RedissonClient;
import org.springframework.stereotype.Controller;
import org.springframework.util.StopWatch;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.concurrent.TimeUnit;

/**
 * redisson，是java里针对jedis框架的封装，例如锁等
 */
@Controller
@Slf4j
public class LockServiceImpl {

    @Resource
    private RedissonClient redissonClient;

    /**
     * http://localhost:9999/testLockWithoutTime
     * @return
     */
    @ResponseBody
    @GetMapping("/testLockWithoutTime")
    public String testLockWithoutTime(){
        StopWatch stopWatch = new StopWatch();
        stopWatch.start("init lock");
        log.info("hello try get lock");

        //获取一把锁
        RLock lock = redissonClient.getLock("my-lock");
        stopWatch.stop();
        stopWatch.start("get lock");

        //加锁，如果使用lock()，则会阻塞等待直到拿到锁
        if (!lock.tryLock()) {
            stopWatch.stop();
            throw new RuntimeException("没有拿到锁！耗时：" + stopWatch.prettyPrint());
        }
//        lock.lock();

        //锁的自动续期，如果业务执行时间超长，运行期间会自动给锁续期30秒时间，不用担心业务时间长，锁自动过期
        //加锁的业务只要运行完成，就不会给当前锁续期，即使不手动解锁，锁默认在30秒后也会自动删除
        try {
            log.info("加锁成功，执行业务.... "+Thread.currentThread().getId());
            Thread.sleep(40000);
        } catch (InterruptedException e) {
            log.error("异常 ", e);
        } finally {
            //手动解锁
            log.info("解锁..."+Thread.currentThread().getId());
            lock.unlock();
        }
        return "hello";
    }

    /**
     * http://localhost:9999/testLockWithTime
     * @return
     */
    @ResponseBody
    @GetMapping("/testLockWithTime")
    public String hello() throws InterruptedException {
        StopWatch stopWatch = new StopWatch();
        stopWatch.start("init lock");
        log.info("hello try get lock");

        //获取一把锁
        RLock lock = redissonClient.getLock("my-lock-time");
        stopWatch.stop();
        stopWatch.start("get lock");

        // 等待锁10s，看能不能拿到，会续期
//        if (!lock.tryLock(10, TimeUnit.SECONDS)) {
//            stopWatch.stop();
//            throw new RuntimeException("没有拿到锁！耗时：" + stopWatch.prettyPrint());
//        }
        // 显式设置时间，锁有效期是10秒，不会续期，如果业务执行时间过长可能会造成重入，锁失效，解锁会失败
        // 如果没拿到锁，会一直阻塞在这里，直到拿到
        lock.lock(10, TimeUnit.SECONDS);

        //锁的自动续期，如果业务执行时间超长，运行期间会自动给锁续期30秒时间，不用担心业务时间长，锁自动过期
        //加锁的业务只要运行完成，就不会给当前锁续期，即使不手动解锁，锁默认在30秒后也会自动删除
        try {
            log.info("加锁成功，执行业务.... "+Thread.currentThread().getId());
            Thread.sleep(40000);
        } catch (InterruptedException e) {
            log.error("异常 ", e);
        } finally {
            //手动解锁
            if (lock.isLocked() && lock.isHeldByCurrentThread()) {
                log.info("解锁..."+Thread.currentThread().getId());
                lock.unlock();
            } else if (lock.isLocked()) {
                log.warn("解锁失败...已经被其他线程持有，重入了");
            } else {
                log.warn("解锁失败...执行过久锁超时失效了");
            }
        }
        return "hello";
    }
}
