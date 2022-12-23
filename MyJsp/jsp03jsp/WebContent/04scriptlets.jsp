<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	표현식, 선언문 스크립틀릿은 한파일에 여러개 선언할수 있다. 
	--%>
	<%
	//5단을 출력하는 메소드
	int dan=5;
	for(int i=1;i<10;i++){
		%>
	<%= dan+"*"+i+"="+dan*i +"<br>" %>	
	<%}%>
</body>
</html>