<%@page import="com.mydata.model.Course"%>
<%@page import="java.util.List"%>
<%@page import="com.mydata.dao.CourseDaoImpl"%>
<%@page import="com.mydata.dao.CourseDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<link href="${contextPath}/resource/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<form action="AddCourse.html">
<b class="text-primary p-3 mb-3">Add New Course</b>
<input type="submit" value="Add Course" class="btn btn-primary p-2">
</form>
<br>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Fees</th>
      <th scope="col">Duration</th>
      <th scope="col"> Modify</th>
      <th scope="col">Remove</th>
    </tr>
  </thead>
  <tbody>
  <%
CourseDao cd=new CourseDaoImpl();
List<Course> list=cd.viewAllCourse();
for(Course c:list)
   {
	%>
	<tr>
	<td><%=c.getId()%></td>
	<td><%=c.getName()%></td>
	<td><%=c.getFees()%></td>
	<td><%=c.getDuration()%></td>
	<td><a href="UpdateCourse.jsp?id=<%=c.getId()%>">update</a></td>
	<td><a href="DeleteCourse.jsp?id=<%=c.getId()%>">delete</a></td>
	</tr>
	<%}
%>
    
  </tbody>
</table>
<%-- 
<table border="1px" cellspacing="5px" cellpadding="10px">
<tr>
    <td>Id</td>
    <td>Name</td>
    <td>Fees</td>
    <td>Duration</td>
    <td>Modify</td>
    <td>Remove</td>
</tr>
<%
CourseDao cd=new CourseDaoImpl();
List<Course> list=cd.viewAllCourse();
for(Course c:list)
   {
	%>
	<tr>
	<td><%=c.getId()%></td>
	<td><%=c.getName()%></td>
	<td><%=c.getFees()%></td>
	<td><%=c.getDuration()%></td>
	<td><a href="UpdateCourse.jsp?id=<%=c.getId()%>">update</a></td>
	<td><a href="DeleteCourse.jsp?id=<%=c.getId()%>">delete</a></td>
	</tr>
	<%}
%>
   
</table><br><br>
--%>

</body>
</html>