<%@ page import="com.learnersacademy.dao.StudentsDao" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="st" class="com.learnersacademy.bean.Students"></jsp:useBean>  
<jsp:setProperty property="*" name="st"/> 
<% int i=StudentsDao.update(st);
response.sendRedirect("viewstd.jsp");
%>
</body>
</html>