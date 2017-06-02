package com.mooc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mooc.model.User;
import com.mooc.service.IUserService;
import com.mooc.utils.JasonBuilder;

@Controller
public class PersonalController {
	@Autowired
	IUserService userService;
	
	@RequestMapping(value="updateNickname.do",produces = "application/json; charset=utf-8",method=RequestMethod.POST)
	@ResponseBody
	public String updateNickname(@RequestParam String nickName,HttpServletRequest request){
		try{
			HttpSession session=request.getSession();
			Integer id=(Integer) session.getAttribute("user_id");
			User user=userService.getUserById(id);
			user.setNickName(nickName);
			userService.updateUser(user);
			session.setAttribute("user_name", user.getNickName());
			return new JasonBuilder("result","1").append("message", "更新成功").toJasonString();
		}
		catch(Exception e){
			e.printStackTrace();
			return new JasonBuilder("result","2").append("message", "更新失败").toJasonString();
		}
	}
}
