<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 
scope 특정 객체의 생명주기
page 해당페이지에서만 사용할수 있는 객체
request 요청이 종료 도리때 까지만 사용할수 있는 객체
session 특정유저만 사용 할 수 있는 객체
application 모든 유저가 사용하룻 있는 객체
 -->
<%--  EL에서 scope별 접근방법
<%
pageContext.setAttribute("name","page Name1");	//별로 쓸일 없음
request.setAttribute("name","page Name2");	//이거만 쓸 확률이 높음
session.setAttribute("name","page Name3");	//거의 안씀
application.setAttribute("name","page Name4");	//별로 안씀
%>
<!-- scope객체 없이 키만 기술하면 page,requset,session,application순으로 검색되고 제일 작은 것을 찍어줌
왠만하면 사용하지 않을 것을 권장 -->
 name : ${name }<hr>
 page 속성: ${pageScope.name }<hr>
 request 속성 : ${requestScope.name }<hr>
 session 속성 : ${sessionScope.name }<hr>
 application 속성 : ${applicationScope.name }<hr> 
 --%> 
 		객체 찍는 방법<br>
 	<%
	   request.setAttribute("str1", null);
	   request.setAttribute("str2", "hello");
	%>

	${empty str1}==true
	${empty str2}==false
	${not empty str2}==true
	
	
	<%
	com.human.ex.Human human=new com.human.ex.Human("park",16);
	request.setAttribute("data",human);
	%>
	
	EL<br>
	${requestScope.data.name}<br>
	${requestScope.data.age}<br>
	${human.name}<br>
	${human.age }<br> 

 
	
 
 
</body>
</html>


















