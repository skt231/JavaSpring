<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--import java.util.Arrays;
	int[] iArr={10,20,30} 
	System.out.println(Arrays.toString(iArr));
	다음 자바코드를 jsp로 구현하시오
	--%>
	
	<%
		int[]iArr={10,20,30};
	%>
	<%=Arrays.toString(iArr)%>
	
	<%--jsp주석 --%>
	<!-- html주석 -->
<%
	//자바 주석 	/*자바 주석 */
%>
</body>
</html>