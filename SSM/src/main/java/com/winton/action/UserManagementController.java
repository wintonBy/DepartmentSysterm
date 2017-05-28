package com.winton.action;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.winton.entity.User;

/**
 * 用户管理
 * @author Alice
 * 2017年5月26日
 */
@Controller
@RequestMapping("/userManagement")
public class UserManagementController {
	
	@RequestMapping("/show")
	public String show(ModelMap map, HttpServletRequest request){
		
		User user = (User) request.getSession().getAttribute("user");
		
		return "/userManager";
	}
	

}
