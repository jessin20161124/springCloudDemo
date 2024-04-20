package com.jessin.practice.spring.cloud.common;

/**
 * todo 实现真正可靠的全局id分配中间件
 * 也可以使用redis incr，如果重复了不断递增
 * 需要确保线程安全
 */
public interface IdGenerator {

    long nextId();
}
