package com.mooc.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.mooc.model.User;
import com.mooc.model.UserExample;
import com.mooc.model.UserExample.Criteria;
import com.mooc.service.IUserService;
import com.mooc.utils.JasonBuilder;
import com.mooc.utils.MailSender;
import com.mooc.utils.Tools;

@Controller
public class RegisterController {
	
	@Autowired
	IUserService userService;
	
	@RequestMapping(value={"/register.do"},method = { RequestMethod.POST })
	
	@ResponseBody
	public String register(@RequestParam String nickName,String email,String password,String verify_code,HttpServletRequest request){
		//检查验证码是否正确
		HttpSession session=request.getSession();
		String v_code= (String) session.getAttribute("codeValidate");
		if(!v_code.equals(verify_code)){
			return new JasonBuilder("result","3").append("message", "验证码错误").toJasonString();
		}
		//检查邮箱是否已经被注册
		if(checkEmailExist(email)){
			return new JasonBuilder("result","2").append("message", "邮箱已注册").toJasonString();
		}
		//开始注册
		JasonBuilder jb=new JasonBuilder();
		try{
			String pw=Tools.getMD5(password);
			User user=new User();
			user.setEmail(email);
			user.setNickName(nickName);
			user.setPassword(pw);
			user.setMemberId(1);//初始为普通会员
			user.setCreateTime(new Date());
			user.setActived(false);
			userService.addUser(user);
			session.setAttribute("user_email", user.getEmail());
			MailSender ms=new MailSender();
			ms.receiveMailAccount=user.getEmail();
			ms.content="您的验证码是："+user.getPassword().substring(0,10);
			ms.start();
//				MailSender.sendEmail(user.getEmail(), "您的验证码是："+user.getPassword().substring(0,10));
			jb.append("result", "1");
			jb.append("message", "注册成功");

		}catch(Exception e){
			e.printStackTrace();
			jb.append("result", "4");
			jb.append("message", "未知错误");
		}
		return jb.toJasonString();
	}
	

	private boolean checkEmailExist(String email){
		UserExample ux=new UserExample();
		Criteria cr=ux.createCriteria();
		cr.andEmailEqualTo(email);
		int i=userService.countByExample(ux);
		System.out.println(i);
		if(i>0){
			return true;  //该邮箱已经存在
		}else return false; 
	}
	
	@RequestMapping(value={"/nameCheck.do"},method = { RequestMethod.POST })
	@ResponseBody
	public String checkNameUq(@RequestParam String nickName){
		UserExample ux=new UserExample();
		Criteria cr=ux.createCriteria();
		cr.andNickNameEqualTo(nickName);
		if(userService.countByExample(ux)>0){
			return new JasonBuilder("result","2").append("message", "该昵称已经存在").toJasonString();
		}else
			return new JasonBuilder("result","1").append("message", "该昵称不存在").toJasonString(); 
	}
	
	
//	账号激活
	@RequestMapping(value={"/active.do"},method = { RequestMethod.POST })
	@ResponseBody
	public String emailVerify(@RequestParam String code,HttpServletRequest request){
		String email=(String) request.getSession().getAttribute("user_email");
		if(null!=email){
			User user=userService.getUserByEmail(email);
			System.out.println(user.getPassword().substring(0, 6));
			if(user.getPassword().substring(0, 10).equals(code)){
				user.setActived(true);
				userService.updateUser(user);
				return new JasonBuilder("result","1").append("message", "激活成功").toJasonString();
			}else new JasonBuilder("result","2").append("message", "激活成功").toJasonString();;
		}
		return new JasonBuilder("result","3").append("message", "参数错误").toJasonString();
	}
	
}
