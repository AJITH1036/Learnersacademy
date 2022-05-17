<%@ page import="com.learnersacademy.dao.TeachersDao" %>
<%@ page import="com.learnersacademy.bean.*" %>
<%@ page import="java.util.* "%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View teachers</title>
</head>
<body>
<%
List<Teachers> list=TeachersDao.getAllRecords();
request.setAttribute("list",list );
%>
<a href="viewclass.jsp">classes</a> <a href="viewsub.jsp">subjects</a> <a href="viewstd.jsp">Students</a><a href="viewteachers.jsp">Teachers</a>
<h1>List of Teachers</h1>
<a href="addteachers.jsp">Add Teacher</a><br>
<table border="1">
<tr>
<th>ID</th>
<th>Name</th>
<th>Dob</th>
<th>Sex</th>
<th>Email</th>
<th>Actions</th>
</tr>
<c:forEach items="${list}" var="t">
<tr>
<td>${t.getTid()}</td>
<td>${t.getTname()}</td>
<td>${t.getDob()}</td>
<td>${t.getSex()} }</td>
<td>${t.getTemail() }</td>
<td><a href="editteacher.jsp">Edit</a>
    <a href="deleteteacher.jsp">Delete</a></td>
</tr>
</c:forEach>
</table>
</body>
</html>