<%@page import="Context.DBConnection"%>
<%@page import="Model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
	<%
	Model.Account auth = (Model.Account) request.getSession().getAttribute("auth");
			if(auth != null){
		request.setAttribute("auth", auth);
			}
	%>
<!DOCTYPE html>
<html>
<head>
<title>Order page</title>
<%@include file="includes/Home/head.jsp" %>
</head>
<body>
	<%@include file="includes/Home/navbar.jsp"%>
	
	
	
	
	<%@include file="includes/Home/footer.jsp" %>
</body>
</html>