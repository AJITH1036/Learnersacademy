<%@ page import="com.learnersacademy.dao.SubjectsDao" %>
<%@ page import="com.learnersacademy.bean.*" %>
<%@ page import="java.util.* "%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="viewclass.jsp">classes</a> <a href="viewsub.jsp">subjects</a> <a href="viewstd.jsp">Students</a><a href="viewteachers.jsp">Teachers</a>
<h1>List of Subjects</h1>
<a href="addsubform.jsp">Add New Subjects</a>  <br/>
<%  
List<Subjects> list=SubjectsDao.getAllRecords();  
request.setAttribute("list",list);  
%>  

<table border="1">  
<tr>
 <th>Id</th> 
<th>Subject Name</th> 
<th>Actions</th>

 </tr>
<c:forEach items="${list}" var="s"> 
<tr>
<td>${s.getSubid()}</td>
<td>${s.getSubname()}</td>
<td> <a href="editsubform.jsp?subid=${s.getSubid()}">Edit</a>    
     <a href="deletesub.jsp?subid=${s.getSubid()}">Delete</a></td>
</c:forEach>
</table>
</body>
</html>