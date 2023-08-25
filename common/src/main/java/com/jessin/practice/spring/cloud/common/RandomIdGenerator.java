package com.jessin.practice.spring.cloud.common;

import java.util.concurrent.ThreadLocalRandom;

/**
 * 41bit时间戳 + 22bit随机数，可能有冲突
 */
public class RandomIdGenerator implements IdGenerator {

    // 初始时间戳：2023-08-25 14:51:45
    private long twepoch = 1692946305000L;

    private static final int TIME_BIT = 41;

    private static final int SEQ_BIT = 22;

    // 序列号最大值
    private static final long sequenceMask = (1L << TIME_BIT) - 1;

    private static final long MAX_SEQ = (1L << SEQ_BIT);

    @Override
    public long nextId() {
        long time = System.currentTimeMillis() & sequenceMask;
        long seq = ThreadLocalRandom.current().nextLong(0, MAX_SEQ);
        return (time << SEQ_BIT) ^ seq;
    }
}
