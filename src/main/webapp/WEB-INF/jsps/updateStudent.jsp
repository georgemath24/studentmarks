<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Student</title>
</head>
<body>
	<form action="updateStud" method="post">
		<pre>
Name: <input type="text" name="name" value="${student.name}" />
Score: <input type="number" name="score" value="${student.score}" />
Subject <input type="text" name="subject" value="${student.subject}" />
<input type="submit" value="save" />
</pre>
	</form>

</body>
</html>