<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>계산</h1><br><br>
<h3>선택한 상품 목록</h3><br><br>
<%
ArrayList list = (ArrayList)session.getAttribute("productlist");
String product=(String) session.getAttribute("product");
if(list == null) {
	out.println("선택한 상품이 없습니다.!!!");
	
}
else {
	for(Object product :list) {
		out.println(product+"<BR>");
		out.println("")
		
	}
}

%>
</body>
</html>