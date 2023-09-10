package com.jessin.practice.spring.cloud.common;

import com.google.common.base.Preconditions;
import com.google.common.collect.Lists;
import org.apache.commons.collections4.CollectionUtils;
import org.springframework.beans.BeanUtils;

import java.util.Collections;
import java.util.List;

public class ListUtils {

    /**
     * 将一个类型的List转化为另一个类型的List
     * 注意两个类型必须符合java bean规范，这里只拷贝名字相同的属性，其他属性不会拷贝，为默认值
     * @param fromList 原list
     * @param toClazz 转换后的类
     * @param <F> 原类型
     * @param <T> 转换后的类型
     * @return
     * @throws Exception
     */
    public static <F, T> List<T> transformBeanList(List<F> fromList, Class<T> toClazz) {
        Preconditions.checkNotNull(toClazz, "clazz不能为null");
        if(CollectionUtils.isEmpty(fromList)){
            return Collections.emptyList();
        }
        List<T> toList = Lists.newArrayList();
        // 转化bean
        for (F originalModel : fromList) {
            T toInstance;
            try {
                toInstance = toClazz.newInstance();
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
            // originalModel -> toInstance
            BeanUtils.copyProperties(originalModel, toInstance);
            toList.add(toInstance);
        }
        return toList;
    }

}
