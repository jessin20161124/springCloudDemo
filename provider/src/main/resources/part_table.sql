create database if not exists spring_cloud_0 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_0;
GRANT insert,delete,update,select ON spring_cloud_0.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_1 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_1;
GRANT insert,delete,update,select ON spring_cloud_1.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_2 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_2;
GRANT insert,delete,update,select ON spring_cloud_2.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_3 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_3;
GRANT insert,delete,update,select ON spring_cloud_3.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_4 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_4;
GRANT insert,delete,update,select ON spring_cloud_4.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_5 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_5;
GRANT insert,delete,update,select ON spring_cloud_5.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_6 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_6;
GRANT insert,delete,update,select ON spring_cloud_6.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_7 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_7;
GRANT insert,delete,update,select ON spring_cloud_7.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_8 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_8;
GRANT insert,delete,update,select ON spring_cloud_8.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_9 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_9;
GRANT insert,delete,update,select ON spring_cloud_9.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_10 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_10;
GRANT insert,delete,update,select ON spring_cloud_10.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_11 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_11;
GRANT insert,delete,update,select ON spring_cloud_11.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_12 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_12;
GRANT insert,delete,update,select ON spring_cloud_12.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_13 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_13;
GRANT insert,delete,update,select ON spring_cloud_13.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_14 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_14;
GRANT insert,delete,update,select ON spring_cloud_14.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_15 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_15;
GRANT insert,delete,update,select ON spring_cloud_15.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_16 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_16;
GRANT insert,delete,update,select ON spring_cloud_16.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_17 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_17;
GRANT insert,delete,update,select ON spring_cloud_17.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_18 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_18;
GRANT insert,delete,update,select ON spring_cloud_18.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_19 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_19;
GRANT insert,delete,update,select ON spring_cloud_19.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_20 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_20;
GRANT insert,delete,update,select ON spring_cloud_20.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_21 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_21;
GRANT insert,delete,update,select ON spring_cloud_21.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_22 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_22;
GRANT insert,delete,update,select ON spring_cloud_22.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_23 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_23;
GRANT insert,delete,update,select ON spring_cloud_23.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_24 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_24;
GRANT insert,delete,update,select ON spring_cloud_24.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_25 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_25;
GRANT insert,delete,update,select ON spring_cloud_25.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_26 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_26;
GRANT insert,delete,update,select ON spring_cloud_26.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_27 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_27;
GRANT insert,delete,update,select ON spring_cloud_27.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_28 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_28;
GRANT insert,delete,update,select ON spring_cloud_28.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_29 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_29;
GRANT insert,delete,update,select ON spring_cloud_29.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_30 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_30;
GRANT insert,delete,update,select ON spring_cloud_30.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create database if not exists spring_cloud_31 DEFAULT CHARACTER SET utf8mb4 ;use spring_cloud_31;
GRANT insert,delete,update,select ON spring_cloud_31.* TO 'hell'@'%';flush privileges;
create table if not exists tb_order_0  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_1  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_2  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_3  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_4  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_5  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_6  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_7  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_8  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_9  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_10  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_11  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_12  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_13  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_14  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_15  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_16  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_17  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_18  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_19  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_20  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_21  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_22  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_23  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_24  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_25  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_26  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_27  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_28  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_29  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_30  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
create table if not exists tb_order_31  (
                  id bigint auto_increment ,
                  order_no bigint not null ,
                  uid bigint not null,
                  store_id bigint not null,
                  total_amount decimal(10, 2) not null,
                  pay_amount decimal(10, 2) not null,
                  order_status tinyint not null default 0,
                  create_time datetime not null default CURRENT_TIMESTAMP ,
                  last_modified_time datetime not null default CURRENT_TIMESTAMP,
                  primary key(id)
                  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
