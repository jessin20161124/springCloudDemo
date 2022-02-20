package com.jessin.practice.spring.cloud.consumer;

import com.alibaba.com.caucho.hessian.io.Hessian2Input;
import com.alibaba.com.caucho.hessian.io.Hessian2Output;
import com.alibaba.com.caucho.hessian.io.SerializerFactory;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import lombok.Data;
import org.junit.Assert;
import org.junit.Test;

/**
 * hessian2 带类型描述，无需借助外部schema实现反序列化
 * 能把目标类的类型也序列化进去，在反序列化时，能够自动转型
 *
 * @Author: jessin
 * @Date: 2022/2/19 3:54 下午
 */
public class DubboHessian2Test {

    private static SerializerFactory serializerFactory = new SerializerFactory(){
        @Override
        public ClassLoader getClassLoader() {
            return Thread.currentThread().getContextClassLoader();
        }
    };
    static {
        // 允许不实现序列化接口
        serializerFactory.setAllowNonSerializable(true);
    }

    @Test
    public void testHessian() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Hessian2Output hessian2Output = new Hessian2Output(byteArrayOutputStream);
        hessian2Output.setSerializerFactory(serializerFactory);
        User user = new User();
        user.setAge(123);
        user.setName("小明");
        Result<User> userResult = new Result<>();
        userResult.setResponse(user);
        userResult.setRate(1.2324);
        try {
            // 会写入类信息，可以直接反序列化得到该类型
            hessian2Output.writeObject(userResult);
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            hessian2Output.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }

        ByteArrayInputStream input = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
        Hessian2Input hessian2Input = new Hessian2Input(input);
        try {
            Object newResult = hessian2Input.readObject();
            Assert.assertEquals(userResult, newResult);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
@Data
class Result<T> {
    private T response;
    private double rate;
}
@Data
class User {
    private int age;
    private String name;
}