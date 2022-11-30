<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student Score</title>
</head>
<body>
<form action="saveStud" method="post">
<pre>
Name: <input type="text" name="name"/>
Score: <input type="number" name="score"/>
Subject: <input type="text" name="subject"/>
<input type="submit" value="save"/>
</pre>
</form>
<a href="displayStudents">View Students</a>
</body>
</html>