<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@ page import="com.human.dao.HumanDao"%>
<%@ page import="com.human.dto.customerDto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		System.out.println(request.getParameter("birthday"));
			 customerDto dto = new customerDto();
			dto.setName(request.getParameter("name"));
			dto.setNo(Integer.parseInt(request.getParameter("no")));
			dto.setHeight(Double.parseDouble(request.getParameter("height")));
			// "yyyy-MM-dd'T'hh:mm"
			
			dto.setBirtString(request.getParameter("birthday"));

			out.println(dto);

			HumanDao dao = new HumanDao();
			int i = dao.Insert(dto);
			if (i == 1) {
		out.println("입력 성공");
			} else {
		out.println("문제 발생");
			}
	%>
	<button onclick="location.href='Main.jsp'">돌아가기</button>

</body>
</html>