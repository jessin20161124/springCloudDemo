#!/bin/bash
for dbNum in {0..31}; do
        printf 'create database if not exists spring_cloud_%d DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_%d;\n' $dbNum $dbNum
        # 注意，打印%，这里必须是%%，对%进行转义
        printf "GRANT insert,delete,update,select ON spring_cloud_%d.* TO 'hell'@'%%';flush privileges;\n" $dbNum
        for tableNum in {0..31}; do
                        printf "create table if not exists tb_order_%d  (
                  id bigint auto_increment ,
                  order_no bigint not null comment '订单号',
                  uid bigint not null comment '用户id',
                  store_id bigint not null comment '店铺id',
                  total_amount decimal(10, 2) not null comment '总金额',
                  pay_amount decimal(10, 2) not null comment '支付金额',
                  order_status tinyint not null default 0 comment '订单状态。0->待支付',
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n" $tableNum
	      done
done
