<%@page import="com.mydata.dao.CourseDaoImpl"%>
<%@page import="com.mydata.dao.CourseDao"%>
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
int res=cd.deleteCourse(i);
if(res>0)
{
%>
 <jsp:forward page="Home.jsp"></jsp:forward>
<%
}
else
{
%>
<h2>Try again!!!</h2>
<jsp:include page="Home.jsp"></jsp:include>
<% 
}
%>

</body>
</html>