<%@page import="Context.DBConnection"%>
<%@page import="Model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
	<%
    Account_User auth = (Account_User) request.getSession().getAttribute("auth");
    if (auth != null){
    	request.setAttribute("auth", auth);
    	response.sendRedirect("HomePage.jsp");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<title>Cart page</title>
<%@include file="includes/Home/head.jsp" %>
</head>
<body>
	<%@include file="includes/Home/navbar.jsp"%>
	
	
	
	
	<%@include file="includes/Home/footer.jsp" %>
</body>
</html>