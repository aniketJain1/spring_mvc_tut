<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- for enable expression language -->
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h3 class="text-center">${Header}</h3>
	<h5 class="text-center">${Desc}</h5>
	<br>

	<h1>Welcome, ${user.userName}</h1>
	<h1>Your email address is ${user.email}</h1>
	<h1>Your password is ${user.password} try to secure the password</h1>
</body>
</html>