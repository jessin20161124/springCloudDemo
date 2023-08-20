-- root密码默认为123456
create database if not exists spring_cloud DEFAULT CHARACTER SET utf8mb4 ;
use spring_cloud;

create table if not exists tb_user  (
 id bigint auto_increment ,
 name varchar(100) not null default '',
 sex tinyint(2) not null default '0',
 age tinyint(2) not null default '0',
 note varchar(512) not null default '',
 create_time datetime not null default CURRENT_TIMESTAMP ,
 last_modified_time datetime not null default CURRENT_TIMESTAMP,
 primary key(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE USER 'hell'@'%' IDENTIFIED BY 'hackPmq_Pa1';

GRANT insert,delete,update,select ON spring_cloud.* TO 'hell'@'%';

flush privileges;
