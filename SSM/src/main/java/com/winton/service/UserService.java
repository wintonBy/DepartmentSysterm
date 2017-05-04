package com.winton.service;

import com.winton.entity.User;

public interface UserService {
	
	int checkUser(String username,String password);
	
	User getUserInfo(String username, String password);

}
