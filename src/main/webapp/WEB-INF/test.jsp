<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>${user.age > 18 ? "Adult" : "Minor"}</p>
	<p>${empty user.address ? "Address not provided" : user.address}</p>

</body>
</html>