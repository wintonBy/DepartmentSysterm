package com.winton.dao;

import org.apache.ibatis.annotations.Param;

public interface UserMapper {
	
	int query(@Param("username") String username,@Param("password") String password);

}
