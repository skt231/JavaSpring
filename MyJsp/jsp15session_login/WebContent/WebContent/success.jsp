<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	
 if(request.getAttribute("user_id")==null){
	response.sendRedirect("login.jsp?isLogin=false");
}else {
	String user_id=(String)session.getAttribute("user_id");
	out.println("로그인에 성공했습니다.<br>"+user_id+"님 환영합니다.");
}
%>
<form action ="Logout.Servlet" method="get">
 	<button type="submit">로그아웃</button>
 </form> 
<br>

</body>
</html>