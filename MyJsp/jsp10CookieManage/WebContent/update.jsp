<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8"); 
		boolean check = (boolean)request.getAttribute("check");
		
		if(check == false){
			out.println("<h1>없는 ID 입니다.</h1>");
		}else{%>
	name :<%= request.getAttribute("name") %><br> 
	변경 전 value :<%= request.getAttribute("value") %><br>
	변경 된 value :<%= request.getAttribute("updateValue") %><br> 
	age : <%= request.getAttribute("age") %><br>
	<% }
	%>
</body>
</html>