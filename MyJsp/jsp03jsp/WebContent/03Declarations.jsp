<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--클래스맴버로 사옹되 함수나 클래스 변수로 선언할떄 사용 --%>
<%
	String str1="1";
%>
<%
	String str2="1";

	str1=str1+"1";
	str2=str2+"1";
%>
<%=str1 %>
<br>
<%=str2 %>

</body>
</html>