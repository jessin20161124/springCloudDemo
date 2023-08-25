package com.jessin.practice.spring.cloud.api.dto.resp;

import lombok.Data;

import java.util.List;

@Data
public class OrderListResp {

    private List<OrderDTO> orderDTOList;
}
