package com.mooc.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import com.mooc.dao.CourseMapper;
import com.mooc.model.Course;
import com.mooc.model.CourseExample;
import com.mooc.service.ICourseService;

@Service("courseService")
public class CourseServiceImpl implements ICourseService {
	
	@Autowired
	CourseMapper courseMapper;
	
	

	public void addCourse(Course Course) {
		// TODO Auto-generated method stub

	}

	public void delCourseById(Course Course) {
		// TODO Auto-generated method stub

	}

	public void updateCourse(Course Course) {
		// TODO Auto-generated method stub

	}

	public Course getCourseById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Course> getAll() {
		// TODO Auto-generated method stub
		CourseExample example=new CourseExample();
		return courseMapper.selectByExample(example);
	}

}
