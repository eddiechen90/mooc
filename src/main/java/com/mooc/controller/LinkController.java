package com.mooc.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.mooc.model.Course;
import com.mooc.model.CourseCategory;
import com.mooc.model.User;
import com.mooc.service.ICourseCategoryService;
import com.mooc.service.ICourseService;
import com.mooc.service.ICourseTypeService;
import com.mooc.service.IUserService;

@Controller

public class LinkController {
	
	@Autowired
	ICourseCategoryService courseCategoryService;
	@Autowired
	ICourseTypeService courseTypeService;
	@Autowired
	IUserService userService;
	
	@Autowired
	ICourseService courseService;
	
	@RequestMapping({ "/","/index.html" })
	public ModelAndView home(){
		ModelAndView mv=new ModelAndView("home");
		List<Course> list=courseService.getAll();
		mv.addObject("courses",list);
		return mv;
	}
	
	@RequestMapping({ "course.html" })
	public ModelAndView course(){
		ModelAndView mv=new ModelAndView("course");
		List<CourseCategory> course_categorys=courseCategoryService.getAllCourseCategory();
		mv.addObject("courseCategorys", course_categorys);
		mv.addObject("courseTypes",courseTypeService.getAllCourseTypes());
		return mv;
	}
	
	@RequestMapping(value={ "course_detail.html" })
	public String course_detail(){
		return "course_detail";
	}
	
	@RequestMapping({ "register.html" })
	public String register(){
		return "register";
	}
	
	@RequestMapping({ "search.html" })
	public String search(){
		return "search";
	}
	
	@RequestMapping({ "personal.html" })
	public ModelAndView personal(HttpServletRequest request){
		ModelAndView mv=new ModelAndView("personal");
		return mv;
	}
	@RequestMapping({ "personal_code.html" })
	public String personal_code(){
		return "personal_code";
	}
	
	@RequestMapping({ "verify.html" })
	public ModelAndView verify(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv=new ModelAndView("verify");
		String email=(String) request.getSession().getAttribute("user_email");
		if(null!=email){
			mv.addObject("email",email);
			User user=userService.getUserByEmail(email);
			if(user.getActived()){
				mv.setViewName("verifyx");
			}
		}else{
			mv.setViewName("redirect:/index.html");
		}
		return mv;
	}
	
	@RequestMapping({ "verifyx.html" })
	public ModelAndView verifyx(HttpServletRequest request){
		ModelAndView mv=new ModelAndView("verifyx");
		String email=(String) request.getSession().getAttribute("user_email");
		if(null!=email){
			User user=userService.getUserByEmail(email);
			mv.addObject("email", user.getEmail());
			return mv;
		}
		mv.setViewName("redirect:/verify.html");
		return mv;
	}
}
