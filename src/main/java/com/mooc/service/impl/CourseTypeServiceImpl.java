package com.mooc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mooc.dao.CourseTypeMapper;
import com.mooc.model.CourseType;
import com.mooc.model.CourseTypeExample;
import com.mooc.service.ICourseTypeService;

@Service("courseTypeService")
public class CourseTypeServiceImpl implements ICourseTypeService {

	@Autowired
	CourseTypeMapper courseTypeMapper;
	public List<CourseType> getAllCourseTypes() {
		// TODO Auto-generated method stub
		return courseTypeMapper.selectByExample(new CourseTypeExample());
	}



}
