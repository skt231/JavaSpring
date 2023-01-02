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
String id,pw;
String loginform=" ";
id=request.getParameter("id");
pw=request.getParameter("pw");

if(id.equals("java1")&&pw.equals("1234")){
	Cookie cookie= new Cookie("id",id);
 	cookie.setMaxAge(60);	
	response.addCookie(cookie);
	
}else if(id.equals("java2")&&pw.equals("1234")){
	Cookie cookie=new Cookie("id",id);
	cookie.setMaxAge(60);
	response.addCookie(cookie);
	
}else if(request.getAttribute("id")==null){
	//response.sendRedirect("/jsp05RedirectDispatcher/login.jsp?isLogin=false");
	out.println("<script>location.href='/jsp13CookieLogin/login.jsp?isLogin=false'</script>");
}else if(request.getAttribute("id")==" "){
	//response.sendRedirect("/jsp05RedirectDispatcher/login.jsp?isLogin=false");
	out.println("<script>location.href='/jsp13CookieLogin/login.jsp?isLogin=false'</script>");
}
%>

로그인에 성공하셨습니다.<br>
ID 는 <%=request.getAttribute("id")%>입니다.<br>
<!--  (setAttribute은 값을 답고 getAttribute는 값을 가져옴)-->
 <a href="logout.jsp">로그아웃</a> 
<br>

</body>
</html>