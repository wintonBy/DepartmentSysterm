package com.winton.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.winton.entity.Menu;
import com.winton.entity.User;

public interface UserMapper {
	
	int query(@Param("username") String username,@Param("password") String password);
	
	User getUserInfo(@Param("username") String username,@Param("password") String password);
	
	List<Menu> getParentMeunListByUserId(@Param("userId")String userId);
	
	List<Menu> getChildMeunListByUserId(@Param("menuId")String menuId);

}
