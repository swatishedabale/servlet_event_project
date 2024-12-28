<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%
	ResultSet rs=(ResultSet) request.getAttribute("rs");
	%>
	<h1>Update Page</h1>
	<form action="update">
		<input type="text" name="id" readonly="readonly" value="<%=rs.getInt(1)%>"> 
		<input type="text" name="title" value="<%=rs.getString(2)%>"> 
		<input type="text" name="loc" value="<%=rs.getString(3)%>"> 
		<input type="text" name="date" value="<%=rs.getString(4)%>">
		 <input type="text" name="guest" value="<%=rs.getString(5)%>">

		<button type="submit">Update</button>

	</form>
</body>
</html>