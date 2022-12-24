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
int num=Integer.parseInt(request.getParameter("num2"));
String str=request.getParameter("str2");

for(int i=1;i<=num;i++) {
	//공간찍기
for(int j=i;j<=num;j++) {
%>
	&nbsp;	
                  <%  }
//별찍는 for
for(int k=1;k<=i;k++) {
%>
	<%=str %>
<% }%>
<br>
  <% }%>



</body>
</html>