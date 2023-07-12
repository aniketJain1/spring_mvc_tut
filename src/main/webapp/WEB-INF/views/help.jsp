<%@page import="java.awt.desktop.ScreenSleepEvent"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!-- for jsp expression -->    
<%@page isELIgnored="false" %>

<!-- for jstl, scriptlet tag ko kam use krne ke liye, q ki jsp ki andar java kam likhni 
chahiye aur tag ke form ke me jyaa kam krna chahiye -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<%
	/* 
	String name = (String) request.getAttribute("name");
	Integer rollnumber = (Integer) request.getAttribute("rollnumber");
	LocalDateTime nowDateTime = (LocalDateTime) request.getAttribute("nowDateTime");
	 */
	%>
	
	<h1>
	Hello my name is 
	<%-- <%=name %> --%>
	${name} <!-- jsp Expression language -->
	</h1>
	
	<h1>This is help page !!!</h1>
	
	<h1>
	my Roll number is <%-- <%= rollnumber %> --%>
	${rollnumber}
	</h1>

	<h3>
	Date and Time is : <%-- <%= nowDateTime %> --%>
	${nowDateTime}
	</h3>
	
	<%-- 
	<% int x= 0; 
	while(x!=10){%>
	 <%= nowDateTime %> 
	 <% /* out.println(x); */ x++; }%>
 	--%>
 	
 	<hr>
 	
 	<c:forEach var="item" items="${marks }">
 	
 		<%-- <h1>${item }</h1> --%>
 		<h1><c:out value="${item }"></c:out></h1>
 	</c:forEach>
 	
</body>
</html>