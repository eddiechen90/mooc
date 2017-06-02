package com.mooc.service.impl;

import java.util.List;


import com.mooc.dao.CourseCategoryMapper;
import com.mooc.model.CourseCategory;
import com.mooc.model.CourseCategoryExample;
import com.mooc.service.ICourseCategoryService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("courseCategoryService")
public class CourseCategoryServiceImpl implements ICourseCategoryService{

	@Autowired
	CourseCategoryMapper courseCategoryMapper;
	public List<CourseCategory> getAllCourseCategory() {
		// TODO Auto-generated method stub
		return courseCategoryMapper.selectByExample(new CourseCategoryExample());
	}
}
