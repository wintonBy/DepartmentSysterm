create table if not exists menu(
  menuId int(11) NOT NULL auto_increment comment '模块Id,自增',
  deleted bit(1) DEFAULT NULL DEFAULT 0 comment '伪删除',
  createTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP comment '创建时间',
  description varchar(255) DEFAULT NULL comment '描述',
  iconCls varchar(255) DEFAULT NULL comment '图标',
  kind varchar(1) DEFAULT NULL comment '0是一级菜单1是二级菜单',
  location varchar(255) DEFAULT NULL,
  name varchar(255) DEFAULT NULL comment '英文名称',
  nameCn varchar(255) DEFAULT NULL comment '中文名称',
  orderBy int(11) DEFAULT NULL comment '排序',
  parentId varchar(32) DEFAULT NULL comment '父节点id,-1代表没有父节点',
  PRIMARY KEY (menuId),
  UNIQUE KEY name (name)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;