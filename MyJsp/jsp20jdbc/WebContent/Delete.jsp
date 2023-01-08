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
	<%
		System.out.println(request.getParameter("name"));
		com.human.dao.HumanDao dao = new com.human.dao.HumanDao();
		int result = dao.Delete(request.getParameter("name"));
		if (result == 1) {
			out.println("성공");
		} else {
			out.println("실패");
		}
	%>
	<button onclick="location.href='Main.jsp'">돌아가기</button>

</body>
</html>