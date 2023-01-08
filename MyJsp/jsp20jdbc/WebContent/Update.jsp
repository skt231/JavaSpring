<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<button onclick="location.href='Main.jsp'">돌아가기</button>
<br><hr>
<%
	System.out.println(request.getParameter("height"));
	com.human.dao.HumanDao dao=new com.human.dao.HumanDao();
	String name = (String)request.getParameter("name");
	double height = Double.parseDouble(request.getParameter("height"));
	int result=dao.Update(name,height);
	if(result==1){
		out.println("성공");		
	}else{
		out.println("실패");
	}
%>

</body>
</html>