<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.time.LocalDateTime" %>
<%@ page import = "java.time.format.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//page 지시자는 현재 페이지 정보나 특정 클래스를 import할떄 사용한다.
//import java.time.LocalDateTime;
//import java.time.foramt.DateTimeFormatter;
String formatDate1=LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd"));
//import 안했을때는 풀네음으로 써야 빨간줄이 없어짐 밑에 처럼
String formatDate2=java.time.LocalDateTime.now().format(java.time.format.DateTimeFormatter.ofPattern("yyyyMMdd"));

%>
<%=formatDate1 %>
<%=formatDate2 %>
</body>
</html>