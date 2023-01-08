<%@page import="java.time.format.DateTimeFormatter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@ page import="com.human.dao.HumanDao"%>
<%@ page import="com.human.dto.customerDto"%>
<%@ page import="java.util.*"%>
<%@ page import="java.time.*" %>
<%@ page import="java.time.format.DateTimeFormatter.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<title>Select for Member</title>
</head>

<body>
<button onclick="location.href='Main.jsp'">돌아가기</button>
	<hr>
	<%
		HumanDao dao=new HumanDao();
		ArrayList<customerDto> dtos = 
		dao.Select(request.getParameter("name"));
			
		if(dtos!=null){
			for(customerDto dto:dtos){
		out.println(dto.getNo() +"번  : " +"이름 : " + dto.getName() +
				" 키 : " +dto.getHeight() + " 생일 : " +
				dto.getBirthday().format(DateTimeFormatter.ofPattern("yyyy-MM-dd")));
		out.println("<br>");
			
			}
		}
		System.out.println("end");
	%>
</body>
</html>