package com.mydata.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mydata.dao.CourseDao;
import com.mydata.dao.CourseDaoImpl;
import com.mydata.model.Course;

/**
 * Servlet implementation class UpdateCourseServlet
 */
public class UpdateCourseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCourseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		int i=Integer.parseInt(request.getParameter("cid"));
		String n=request.getParameter("cname");
		float f=Float.parseFloat(request.getParameter("cfees"));
		int d=Integer.parseInt(request.getParameter("cduration"));
		
		Course c=new Course(i, n, f, d);
		CourseDao cd=new CourseDaoImpl();
		int res=cd.updateCourse(i, f, d);
		
		if (res>0) {
			request.getRequestDispatcher("Home.jsp").forward(request, response);
		}
		else{
			out.print("pls try again!!");
			request.getRequestDispatcher("UpdateCourse.jsp").include(request, response);
			
		}
	}

}
