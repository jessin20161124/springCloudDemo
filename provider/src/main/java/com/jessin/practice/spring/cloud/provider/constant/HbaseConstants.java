package com.jessin.practice.spring.cloud.provider.constant;

public interface HbaseConstants {

     /**
      * namespace:tableName
      */
     String ORDER_INFO = "spring_cloud:order_info";

     byte[] COLUMN_FAMILY = "f".getBytes();

     String COLUMN_FAMILY_STR = "f";

     byte[] id = "id".getBytes();

     byte[] ORDER_NO = "orderNo".getBytes();

     byte[] REMARK = "remark".getBytes();

     byte[] cancelReason = "cancelReason".getBytes();

     byte[] uid = "uid".getBytes();

     byte[] storeId = "storeId".getBytes();

     byte[] totalAmount = "totalAmount".getBytes();

     byte[] payAmount = "payAmount".getBytes();

     byte[] orderStatus = "orderStatus".getBytes();

     byte[] createTime = "createTime".getBytes();

     byte[] lastModifiedTime = "lastModifiedTime".getBytes();

     byte[] version = "version".getBytes();
}
