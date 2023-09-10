package com.jessin.practice.spring.cloud.provider.converter;

import com.jessin.practice.spring.cloud.api.dto.req.UserQueryReq;
import com.jessin.practice.spring.cloud.provider.bo.UserQueryCondition;
import lombok.experimental.UtilityClass;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;

import java.util.Objects;

@UtilityClass
public class UserTransformer {

    public UserQueryCondition convert(UserQueryReq userQueryReq) {
        UserQueryCondition userQueryCondition = new UserQueryCondition();
        BeanUtils.copyProperties(userQueryReq, userQueryCondition);
        // 一个字段的类型，最好固定
        // mongodb _id的类型可以自定义，如果不传递，创建时默认是ObjectId类型
        // 如果传递了数字，则是数字类型，这里查不出来，必须改为userQueryCondition.getId为long
        if (StringUtils.isNotBlank(userQueryReq.getId())) {
            userQueryCondition.setId(userQueryReq.getId());
        } else if (Objects.nonNull(userQueryReq.getLongId())) {
            userQueryCondition.setId(userQueryReq.getLongId());
        }
        return userQueryCondition;
    }

}
