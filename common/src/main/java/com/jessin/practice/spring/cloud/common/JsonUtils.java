package com.jessin.practice.spring.cloud.common;

import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.experimental.UtilityClass;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.converter.json.Jackson2ObjectMapperBuilder;

import java.io.IOException;

/**
 * 不用使用fastjson!
 */
@Slf4j
@UtilityClass
public class JsonUtils {

    private static ObjectMapper objectMapper;
    static {
        Jackson2ObjectMapperBuilder json = Jackson2ObjectMapperBuilder.json();
        //  json.dateFormat(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));
        objectMapper = json.build();
    }

    public static<T> T read(String value, Class<T> clz) {
        try {
            return objectMapper.readValue(value, clz);
        } catch (IOException e) {
            log.error("deserial error ", e);
            return null;
        }
    }

    public static String write(Object value) {
        try {
            return objectMapper.writeValueAsString(value);
        } catch (Exception e) {
            log.error("serial error ", e);
            return null;
        }
    }
}
