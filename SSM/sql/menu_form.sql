create table if not exists menu(
  menuId int(11) NOT NULL auto_increment,
  deleted bit(1) NOT NULL DEFAULT 0,
  createTime datetime DEFAULT CURRENT_TIMESTAMP comment '创建时间',
  description varchar(255) DEFAULT NULL,
  iconCls varchar(255) NOT NULL,
  kind varchar(1) NOT NULL comment '0是一级菜单1是二级菜单',
  location varchar(255) DEFAULT NULL,
  name varchar(255) NOT NULL,
  nameCn varchar(255) NOT NULL,
  orderBy int(11) NOT NULL,
  status varchar(1) NOT NULL,
  parentId varchar(32) DEFAULT NULL,
  PRIMARY KEY (menuId),
  UNIQUE KEY name (name)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;