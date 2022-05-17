<%@ page import="com.learnersacademy.dao.ClassesDao" %>
<%@ page import="com.learnersacademy.bean.*" %>
<%@ page import="java.util.* "%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Classes</title>
</head>
<body>
<a href="viewclass.jsp">classes</a> <a href="viewsub.jsp">subjects</a> <a href="viewstd.jsp">Students</a><a href="viewteachers.jsp">Teachers</a>
<h1>List of classes</h1>
<a href="addclassform.jsp">Add New Class</a>  <br/>
<%  
List<Classes> list=ClassesDao.getAllRecords();  
request.setAttribute("list",list);  
%>  

<table border="1">  
<tr>
 <th>Id</th> 
<th>Class Name</th> 
<th>Actions</th>

 </tr>
<c:forEach items="${list}" var="c"> 
<tr>
<td>${c.getCid()}</td>
<td>${c.getCname()}</td>
<td> <a href="editclassform.jsp?cid=${c.getCid()}">Edit</a>    
     <a href="deleteclass.jsp?cid=${c.getCid()}">Delete</a></td>
</c:forEach>
</table>
</body>
</html>