<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
사용자 입력중 하나의 데이터는 param에 받고 여러개의 데이터는 paramValues로 받는다.<br><br>
아이디:${param.id }:${param["id"] }<br>

선택한동물:${paramValues.animal[0]}<br>
${paramValues.animal[1]}<br>
${paramValues.animal[2]}<br>

${paramValues['animal'][0] }<br>
${paramValues['animal'][1] }<br>
${paramValues['animal'][2] }<br>


나중에  jstl을 배워서 반복문으로 출력하면 유동적인 데이터를 처리할수 있다.
<br>





























</body>
</html>