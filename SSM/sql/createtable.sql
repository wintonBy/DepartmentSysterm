create table if not exists user (
	userId int(11) not null ,
	username varchar(64) not null,
	password varchar(255) not null,
	primary key (userId)
) engine = InnoDB default charset=utf8 comment="用户信息表";

alter table user add (name varchar(64) comment '姓名') ; 
alter table user add (mobile varchar(64) comment '手机号') ; 
alter table user add (createTime datetime comment '创建时间') ; 
alter table user add (mail varchar(64) comment '邮箱地址') ; 

insert into user(userId,username,password) values(00000000001,"hjp","e10adc3949ba59abbe56e057f20f883e"),(00000000002,"zww","e10adc3949ba59abbe56e057f20f883e");