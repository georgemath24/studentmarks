<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student Display</title>
</head>
<body>
	<h2>Students:</h2>
	<table borders="1">
		<tr>
			<th>Student</th>
			<th>Subject</th>
			<th>Mark</th>
		</tr>

		<c:forEach items="${students}" var="student">
		<tr>
			<td>${student.name}</td>
			<td>${student.subject}</td>
			<td>${student.score}</td>
			<td><a href="showUpdate?id=${student.id}">Update</a></td>
		</tr>
		</c:forEach>
	</table>

</body>
</html>