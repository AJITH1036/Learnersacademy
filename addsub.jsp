<%@page import="com.learnersacademy.dao.SubjectsDao"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="s" class="com.learnersacademy.bean.Subjects"></jsp:useBean>  
<jsp:setProperty property="*" name="s"/> 
<%
int i=SubjectsDao.save(s);
if(i>0){
	response.sendRedirect("viewsub.jsp");
}
else{
	response.sendRedirect("addsub-error.jsp");
}

%>
</body>
</html>