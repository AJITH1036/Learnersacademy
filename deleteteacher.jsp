<%@ page import="com.learnersacademy.dao.TeachersDao" %>
<%@ page import="com.learnersacademy.bean.Teachers" %>
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
<%int i=TeachersDao.delete(t);
response.sendRedirect("viewteachers.jsp");
%>
</body>
</html>