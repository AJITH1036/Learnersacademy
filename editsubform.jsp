<%@ page import="com.learnersacademy.dao.SubjectsDao" %>
<%@ page import="com.learnersacademy.bean.Subjects" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String subid=request.getParameter("subid");
Subjects s=SubjectsDao.getRecordById(Integer.parseInt(subid));
%>
<h1>Edit Form</h1>
<form action="editsub.jsp" method="post">
<input type="hidden" name="subid" value="<%=s.getSubid() %>">
<table>
<tr>
<td>Subject Name</td>
<td><input type="text" name="subname" value="<%=s.getSubname()%>"></td>
</tr>
<tr><td colspan="2"><input type="submit" value="Update"/></td></tr>  
</table>
</form>
</body>
</html>