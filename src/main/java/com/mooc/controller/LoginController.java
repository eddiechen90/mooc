package com.mooc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mooc.model.User;
import com.mooc.model.UserExample;
import com.mooc.model.UserExample.Criteria;
import com.mooc.service.IUserService;
import com.mooc.utils.JasonBuilder;
import com.mooc.utils.Tools;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
	
	@Autowired
	private IUserService userService;
	
	@RequestMapping(value="logout.do", method = RequestMethod.GET)
	public ModelAndView logOut(HttpServletRequest request){
		HttpSession session=request.getSession();
		session.removeAttribute("user_name");
		session.removeAttribute("user_id");
		session.removeAttribute("user_email");
		return new ModelAndView("redirect:/index.html");
	}
	
	@RequestMapping(value="login.do",produces = "application/json; charset=utf-8",method = { RequestMethod.POST })
	@ResponseBody
	public String login(@RequestParam String email,String password,String verify,HttpServletRequest request, HttpServletResponse response) throws Exception{
		HttpSession session=request.getSession();
		String v_code= (String) session.getAttribute("codeValidate");
		JasonBuilder jb=new JasonBuilder();
		if(v_code.equals(verify)){//验证码正确才会进入下一步
			UserExample example=new UserExample();
			Criteria criteria = example.createCriteria();
			criteria.andEmailEqualTo(email);
			List<User> list=userService.selectByExample(example);
			User user=null;
			String md5Password=Tools.getMD5(password);
			if(list.size()!=0){
				user=list.get(0);
				if(md5Password.equals(user.getPassword())&&user.getActived()){//密码匹配，并且账号已经激活才可以登陆
					jb.append("result","1");
					jb.append("message", "登陆成功");
					request.getSession().setAttribute("user_name", user.getNickName());
					request.getSession().setAttribute("user_id", user.getId());
					request.getSession().setAttribute("user_email", user.getEmail());//用户信息存到Session中
				}else if(!md5Password.equals(user.getPassword())){
					jb.append("result","2");
					jb.append("message", "密码错误");  //密码错误
				}else{
					jb.append("result","3");
					jb.append("message", "账号未激活");   //账号未激活
					request.getSession().setAttribute("user_email", user.getEmail());   //将用户邮箱存到Session中
				}
			}else{
				jb.append("result","4");
				jb.append("message", "用户不存在");    //用户不存在
			}
		}else{
			jb.append("result","5");
			jb.append("message", "验证码错误");
		}
		return jb.toJasonString();   //返回Jason字符串
	}
}
