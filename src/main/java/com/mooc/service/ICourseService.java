package com.mooc.service;

import java.util.List;

import com.mooc.model.Course;

public interface ICourseService {
	
	public List<Course> getAll();
	
	public void addCourse(Course Course);
	public void delCourseById(Course Course);
	public void updateCourse(Course Course);
	public Course getCourseById(int id);

}
