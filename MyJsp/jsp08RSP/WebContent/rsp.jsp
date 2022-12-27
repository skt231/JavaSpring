<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
UserChoice는 <%=request.getAttribute("userChoice") %>
ComChoice는 <%=request.getAttribute("comChoice") %><br>
결과는<br>
<%=request.getAttribute("result") %>
</body>
</html>