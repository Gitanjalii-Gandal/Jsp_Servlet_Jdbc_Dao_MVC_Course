<%@page import="com.mydata.dao.CourseDaoImpl"%>
<%@page import="com.mydata.dao.CourseDao"%>
<%@page import="com.mydata.model.Course"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int i=Integer.parseInt(request.getParameter("id"));
CourseDao cd=new CourseDaoImpl();
Course c=cd.viewCourseById(i);
%>
<form action="UpdateCourseServlet" method="post">
<table>
<caption>Course Details</caption>
<tr>
   <td>Course Id</td>
   <td><input type="text" name="cid" value="<%=c.getId()%>" readonly="readonly"></td>
</tr>
<tr>
   <td>Course Name</td>
   <td><input type="text" name="cname" value="<%=c.getName()%>" readonly="readonly"></td>
</tr>
<tr>
   <td>Course Fees</td>
   <td><input type="text" name="cfees"  value="<%=c.getFees()%>"></td>
</tr>
<tr>
   <td>Course Duration</td>
   <td><input type="text" name="cduration" value="<%=c.getDuration()%>" ></td>
</tr>
<tr>
   <td><input type="reset"></td>
   <td><input type="submit" value="Update Course"></td>
</tr>
</table>
</form>
</body>
</html>