package com.mydata.dao;

import java.util.List;

import com.mydata.model.Course;

public interface CourseDao {

	public List<Course> viewAllCourse();
	public int saveCourse(Course c);
	public int deleteCourse(int i);
	public Course viewCourseById(int i);
	public int updateCourse(int i,float f,int d);
}
