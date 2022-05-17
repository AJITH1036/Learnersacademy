<%@ page import="com.learnersacademy.dao.TeachersDao" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="t" class="com.learnersacademy.bean.Teachers"></jsp:useBean>  
<jsp:setProperty property="*" name="t"/> 
<%
int i=TeachersDao.save(t);
if(i>0){
	response.sendRedirect("addteacher-success.jsp");
}
else{
	response.sendRedirect("addteacher-error.jsp");
}
%>
</body>
</html>