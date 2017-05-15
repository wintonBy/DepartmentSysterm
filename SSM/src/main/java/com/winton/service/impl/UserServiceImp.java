package com.winton.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.winton.dao.UserMapper;
import com.winton.entity.Menu;
import com.winton.entity.User;
import com.winton.service.UserService;

@Service
public class UserServiceImp implements UserService{
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public int checkUser(String username, String password) {
		return userMapper.query(username, password);
	}

	@Override
	public User getUserInfo(String username, String password) {
		return userMapper.getUserInfo(username, password);
	}

	@Override
	public List<Menu> getMeunListByUserId(String userId) {
		
		//获取一级菜单
		List<Menu> parentMenuList = userMapper.getParentMeunListByUserId(userId);
		//获取二级菜单
		for(Menu parentMenu:parentMenuList){
			List<Menu> childMenuList = userMapper.getChildMeunListByUserId(parentMenu.getMenuId());
			parentMenu.setChildMenuList(childMenuList);
		}
		
		return parentMenuList;
	}
	
	
	
	
	

}
