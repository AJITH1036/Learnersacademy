<%@ page import="com.learnersacademy.dao.StudentsDao" %>
<%@ page import="com.learnersacademy.bean.Students" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit students</title>
</head>
<body>
<% String sid=request.getParameter("sid");
Students st=StudentsDao.getRecordById(Integer.parseInt(sid));
String sname=request.getParameter("name");
String sex=request.getParameter("sex");
String email=request.getParameter("email");%>

<h1>Edit Form</h1>

<form action="editstd.jsp" method="post">
<input type="hidden" name="sid" value="<%=st.getSid() %>">
<table>
<tr>
<td>Student Name</td>
<td><input type="text" name="sname" value="<%=st.getSname()%>"></td>
</tr>

<tr>
<td>Sex</td>
<td><input type="text" name="sex" value="<%=st.getSex()%>"></td>
</tr>
<tr>
<td>Email</td>
<td><input type="email" name="email" value="<%=st.getEmail()%>"></td>
</tr>
<tr><td colspan="2"><input type="submit" value="update"/></td></tr>  
</table>
</form>
</body>
</html>