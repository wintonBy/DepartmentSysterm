create table if not exists user (
	id int(11) not null ,
	username varchar(64) not null,
	password varchar(255) not null,
	name varchar(64) default null,
	primary key (id)
) engine = InnoDB default charset=utf8 comment="用户信息表";



insert into user(id,username,password,name) values(00000000001,"hjp","e10adc3949ba59abbe56e057f20f883e","黄菊萍"),(00000000002,"zww","e10adc3949ba59abbe56e057f20f883e","赵文文");