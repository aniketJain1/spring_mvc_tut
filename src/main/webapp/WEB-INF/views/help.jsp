<%@page import="java.awt.desktop.ScreenSleepEvent"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<%
	String name = (String) request.getAttribute("name");
	Integer rollnumber = (Integer) request.getAttribute("rollnumber");
	LocalDateTime nowDateTime = (LocalDateTime) request.getAttribute("nowDateTime");
	%>
	
	<h1>
	<%=name %>
	</h1>
	
	<h1>This is help page !!!</h1>
	
	<h1>
	my Roll number is <%= rollnumber %>
	</h1>

	<h3>
	Date and Time is : <%= nowDateTime %>
	</h3>
	
	<% int x= 0; 
	while(x!=10){%>
	 <%= nowDateTime %> 
	 <% /* out.println(x); */ x++; }%>

</body>
</html>