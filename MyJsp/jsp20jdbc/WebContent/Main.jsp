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
	<h2>멤버 검색</h2>
		<form action="Select.jsp">
		이름 : <input type="text" name="name" required> <br>
		<input type="submit" value="멤버 검색" ><br>
	</form>
	<button onclick="location.href='Allselect.jsp'">멤버 전체 검색</button>
	<hr>
	<h2>멤버 추가</h2>
	<form action="Insert.jsp">
		번호 : <input type="number" name="no" required ><br>
		이름 : <input type="text" name="name" required ><br>
		키 : <input type="number" step="0.01" name="height" required ><br>
		생일 : <input type="date" name = "birthday" required ><br>
		<input type="submit" value="멤버 추가" ><br>
	</form>
	<hr>
	
	<h2>멤버 수정</h2>
	<form action="Update.jsp">
		키를 수정 할 멤버 이름 : <input type="text" name="name" required><br>
		수정 할 키 : <input type="number" step="0.01" name="height" required><br> 
		<input type="submit" value="멤버수정">
	</form> 
	<hr>
	<form action="Delete.jsp">
		삭제 할 멤버 이름 : <input type="text" name="name" required><br>
		<input type="submit" value="멤버 삭제">
		
	</form>

</body>
</html>