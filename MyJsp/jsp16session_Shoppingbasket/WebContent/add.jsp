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
<% 
String product=request.getParameter("product");
ArrayList<String> list =(ArrayList)session.getAttribute("productList");

if(list==null){
	list=new ArrayList<String>();	
}

list.add(product);
session.setAttribute("productList",list);
response.sendRedirect("checkOut.jsp");
%>
<script>
alert("<%=product %>이(가) 추가 되었습니다!!");
history.go(-1);

</script>
</body>
</html>