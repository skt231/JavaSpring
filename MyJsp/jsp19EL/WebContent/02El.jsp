<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<%--  (고전적인방식)<br>
설명 : <%=request.getParameter("name") %><br>
숫자1 :<%=request.getParameter("num1") %> <br>
숫자2 : <%=request.getParameter("num2") %><br>
(EL방식)<br>
설명 : ${param.name }<br>
숫자1 :${param.num1} <br>
숫자2 :${param.num2 } <br> 

(고전방식)<%=request.getParameter("name").equals("park") %><br>
EL ==연산자 사용 결과 : ${param.name=="park" }<br> --%>

 empty 널인지 비어 있는지 확인<br>
 	<%
	   request.setAttribute("str1", null);
	   request.setAttribute("str2", "hello");
	%>

	${empty str1}==true
	${empty str2}==false
	${not empty str2}==true




null를 넣었을때<br>
request null : <%=request.getParameter("id") %><br>
EL null : ${param.id }<br> 


<%-- 넘어온값 연산<br>
고전<br>
<%
int num1=Integer.parseInt(request.getParameter("num1")); 
int num2=Integer.parseInt(request.getParameter("num2")); 
%>
<%=num1 %>+<%=num2 %>=<%=num1 + num2 %> <br>
el 사용한 방법<br>
${param.num1 }+${param.num2 }=${param.num1+param.num2 }<br> --%>


 
</body>
</html>


















