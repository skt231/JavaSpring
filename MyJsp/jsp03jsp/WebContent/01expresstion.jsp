<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		public String strFunction(){
		return "<br>functionString<br>";
	}
	%>
	<%-- String str="Mystring<br>";--%>
	
	<%-- out.print(str);--%> 
	<%--Mystring --%>
	
	<%--str	--%>
	<%--Mystring --%><%--화면에 출력 --%>
	<%=50 %><%--50이 찍힘 --%>
<%=50+20 %><%--70이 찍힘 --%>
<%=strFunction() %>
<%--<br>functionString<br> --%>
	
<%--i=10 ,str=ABCDE ,sum=6이 나오도록 --%>
<%int i=10; %>
<%=" i= "+ i +"<br>" %>

<%--out.println("i= " +i+"<br/>")--%>

<% String str="ABCDE"; %>
<%="str = " + str + "<br/>" %>
<%--out.println("str = " + str + "<br/>");--%>

<%! public int sum ( int a, int b){
	return a+b;
}
	%> 
<%="sum= " + sum(1,5)+"<br/>" %>
<%-- out.println("sum= " + sum(1,5)+"<br/>");--%>
</body>
</html>