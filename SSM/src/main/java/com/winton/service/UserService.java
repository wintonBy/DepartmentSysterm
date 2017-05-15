package com.winton.service;

import java.util.List;

import com.winton.entity.Menu;
import com.winton.entity.User;

public interface UserService {
	
	int checkUser(String username,String password);
	
	User getUserInfo(String username, String password);
	
	List<Menu> getMeunListByUserId(String userId);

}
