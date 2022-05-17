<%@page import="com.learnersacademy.dao.ClassesDao"%>  
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="c" class="com.learnersacademy.bean.Classes"></jsp:useBean>  
<jsp:setProperty property="*" name="c"/> 
<%
int i=ClassesDao.save(c);
if(i>0){
	response.sendRedirect("addclass-success.jsp");
}
else{
	response.sendRedirect("addclass-error.jsp");
}

%>
</body>
</html>