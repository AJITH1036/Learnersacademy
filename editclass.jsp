<%@ page import="com.learnersacademy.dao.ClassesDao" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="c" class="com.learnersacademy.bean.Classes"></jsp:useBean>  
<jsp:setProperty property="*" name="c"/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% int i=ClassesDao.update(c);
response.sendRedirect("viewclass.jsp");
%>
</body>
</html>