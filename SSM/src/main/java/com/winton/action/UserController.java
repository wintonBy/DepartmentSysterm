package com.winton.action;

import org.apache.commons.codec.digest.Md5Crypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.winton.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/login")
	@ResponseBody
	public String login(String username,String password) {
		JSONObject result = new JSONObject();
		int iResult = userService.checkUser(username, password);
		
		if(iResult == 0){
			result.put("result", "false");
			result.put("errorMsg", "用户名或密码错误");
			
		}else{
			return "/home";
		}
		
		return result.toJSONString();
	}
}
