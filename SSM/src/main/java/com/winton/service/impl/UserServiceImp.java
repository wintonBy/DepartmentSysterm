package com.winton.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.winton.dao.UserMapper;
import com.winton.service.UserService;

@Service
public class UserServiceImp implements UserService{
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public int checkUser(String username, String password) {
		return userMapper.query(username, password);
	}
	

}
