package com.jessin.practice.spring.cloud.api.dto.resp;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class UserStatisticDTO {

    @JsonProperty("name")
    private String id;

    private long nameCnt;

    private long ageSum;
}
