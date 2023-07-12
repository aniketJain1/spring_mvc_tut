<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
</head>
<body>
	<h1>This is home page</h1>
	
	<!-- scriptlet tag -->
	<%
	String name = (String) request.getAttribute("name");/* request : objet of httpServletRequest */
	Integer id = (Integer)request.getAttribute("id");
	List<String> friends = (List<String>) request.getAttribute("f");
	%>
				<!-- jsp expression tag -->
	<h1>Name is <%= name %></h1>
	<h2>
		<%=id %>
	</h2>
	
	<h3>
		<%
			for(String s : friends){
			out.println(s);
		}
		%>
	</h3>
	
	
	
	<%
			for(String s : friends){	
	%>
	
	<h3><%=s %></h3>

	<%
		}	
	%>
	
</body>
</html>