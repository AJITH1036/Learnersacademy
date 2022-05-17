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

<h1>Edit the details</h1>
<%
String tid=request.getParameter("tid");
    Teachers t=TeachersDao.getRecordById(Integer.parseInt(tid));
String tname=request.getParameter("tname");
String dob=request.getParameter("dob");
String sex=request.getParameter("sex");
String temail=request.getParameter("email");
%>
<form action="editteachers.jsp" method="post">
<input type="hidden" name="tid" value="<%=t.getTid() %>">
<table>
<tr>
<td>Teacher Name</td>
<td><input type="text" name="tname" value="<%=t.getTname()%>"></td>
</tr>
<tr>
<td>Dob</td>
<td><input type="date" name="dob" value="<%=t.getDob()%>"></tr>
<tr>
<td>Sex</td>
<td><input type="text" name="sex" value="<%=t.getSex()%>"></td>
</tr>
<tr>
<td>Email</td>
<td><input type="email" name="temail" value="<%=t.getTemail()%>"></td>
</tr>
<tr><td colspan="2"><input type="submit" value="update"/></td></tr>  
</table>
</form>
</body>
</html>