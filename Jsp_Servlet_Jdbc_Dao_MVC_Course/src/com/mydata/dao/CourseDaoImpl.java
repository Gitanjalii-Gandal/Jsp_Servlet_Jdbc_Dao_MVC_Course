package com.mydata.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mydata.model.Course;
import com.mydata.util.CreateConnection;

public class CourseDaoImpl implements CourseDao {

	Connection con=CreateConnection.initConnection();
	@Override
	public List<Course> viewAllCourse() {
		List<Course> clist=new ArrayList<>();
		
		try {
			PreparedStatement ps=con.prepareStatement("select * from course");
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				Course c=new Course(rs.getInt(1), rs.getString(2), rs.getFloat(3), rs.getInt(4));
				clist.add(c);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return clist;
	}
	@Override
	public int saveCourse(Course c) {
		int x=0;
		try {
			PreparedStatement ps=con.prepareStatement("insert into course value(?,?,?,?)");
			ps.setInt(1,c.getId());
			ps.setString(2, c.getName());
			ps.setFloat(3, c.getFees());
			ps.setInt(4, c.getDuration());
			x=ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return x;
		
	}
	@Override
	public int deleteCourse(int i) {
		int x=0;
		try {
			PreparedStatement ps=con.prepareStatement("delete from course where id=?");
			ps.setInt(1, i);
			x=ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return x;
	}
	@Override
	public Course viewCourseById(int i) {
		Course c=new Course();
		
		
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("select * from course where id=?");
			ps.setInt(1, i);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
			 c=new Course(rs.getInt(1), rs.getString(2), rs.getFloat(3), rs.getInt(4));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return c;
	}
	@Override
	public int updateCourse(int i, float f, int d) {
		int x=0;
		try {
			PreparedStatement ps=con.prepareStatement("update course set fees=?,duration=? where id=?");
			ps.setFloat(1, f);
			ps.setInt(2, d);
			ps.setInt(3, i);
			x=ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return x;
	}

}
