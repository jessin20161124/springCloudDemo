package com.jessin.practice.spring.cloud.api.dto.req;

import lombok.Data;

import javax.validation.constraints.NotNull;
import java.util.List;

@Data
public class CreateOrderReq {
    @NotNull
    private Long storeId;

    private List<GoodItem> goodsIdList;

    @Data
    public static class GoodItem {
        /**
         * 商品id
         */
        private String goodId;

        /**
         * 购买的商品数量
         */
        private int quantity;

        /**
         * 购物车某个商品id
         */
        private String cartItemId;
    }
}
