<%@ page import="com.learnersacademy.dao.ClassesDao" %>
<%@ page import="com.learnersacademy.bean.Classes" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String cid=request.getParameter("cid");
Classes c=ClassesDao.getRecordById(Integer.parseInt(cid));
%>
<h1>Edit Form</h1>
<form action="editclass.jsp" method="post">
<input type="hidden" name="cid" value="<%=c.getCid() %>">
<table>
<tr>
<td>Class Name</td>
<td><input type="text" name="cname" value="<%=c.getCname()%>"></td>
</tr>
<tr><td colspan="2"><input type="submit" value="update"/></td></tr>  
</table>
</form>
</body>
</html>