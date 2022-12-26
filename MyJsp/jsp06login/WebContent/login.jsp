<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
if(<%=request.getParameter("isSuccess")%>==false){
	alert("아이디를 잘못 입력하였습니다.");
}

</script>
</head>
<body>
</body>
</html>