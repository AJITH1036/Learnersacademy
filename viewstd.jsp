<%@ page import="com.learnersacademy.dao.StudentsDao" %>
<%@ page import="com.learnersacademy.bean.*" %>
<%@ page import="java.util.* "%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Students</title>
</head>
<body>
<%  
List<Students> list=StudentsDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
<a href="viewclass.jsp">classes</a> <a href="viewsub.jsp">subjects</a> <a href="viewstd.jsp">Students</a><a href="viewteachers.jsp">Teachers</a>
<h1>List of students</h1>
<a href="addstdform.jsp">Add New student</a>  <br/>
<table border="1">  
<tr>
 <th>Id</th> 
<th>Student Name</th> 
<th>Sex</th>
<th>Email</th>
<th>Actions</th>
 </tr>
<c:forEach items="${list}" var="st"> 
<tr>
<td>${st.getSid()}</td>
<td>${st.getSname()}</td>
<td>${st.getSex() }</td>
<td>${st.getEmail()}</td>
<td> <a href="editstdform.jsp?sid=${st.getSid()}">Edit</a>    
     <a href="deletestd.jsp?sid=${st.getSid()}">Delete</a></td>
</c:forEach>
</table>
</body>
</html>