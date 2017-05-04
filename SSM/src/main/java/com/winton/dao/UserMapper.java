package com.winton.dao;

import org.apache.ibatis.annotations.Param;

import com.winton.entity.User;

public interface UserMapper {
	
	int query(@Param("username") String username,@Param("password") String password);
	
	User getUserInfo(@Param("username") String username,@Param("password") String password);

}
