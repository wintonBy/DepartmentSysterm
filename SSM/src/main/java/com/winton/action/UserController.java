package com.winton.action;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.winton.entity.User;
import com.winton.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/login")
	@ResponseBody
	public String login(String username,String password, HttpServletRequest request) {
		JSONObject result = new JSONObject();
		//int iResult = userService.checkUser(username, password);
		User user = userService.getUserInfo(username, password);
		
		if(user == null){
			result.put("result", false);
			result.put("errorMsg", "用户名或密码错误");
		}else{
			result.put("result", true);
			request.getSession().setAttribute("user", user);
		}
		return result.toJSONString();
	}
	
	@RequestMapping("/goHome")
	public String goHome(ModelMap map, HttpServletRequest request){
		
		User user = (User) request.getSession().getAttribute("user");
		map.put("user", user);
		return "/home";
	}
	
	@RequestMapping("/homePage")
	public String homePage(){
		
		return "/centerPage";
		
	}
	
}
