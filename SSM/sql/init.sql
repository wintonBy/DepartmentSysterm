/*新增菜单*/
insert into 
	menu (menuId,description,iconCls,kind,location,name,nameCn,orderBy,parentId)
values
	(1,null,null,0,'',null,'系统管理',1,-1);
	
insert into 
	menu (menuId,description,iconCls,kind,location,name,nameCn,orderBy,parentId)
values
	(2,null,null,1,'',null,'用户管理',11,1);