<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  체크박스에서 꽃이름을 선택하여 선택된 이미지들을 화면에 출력해보자.-->
<form action="flowerServlet" method="get">
	<input type="checkbox" name="flower" value="cosmos.png">코스모스
	<input type="checkbox" name="flower" value="rose.jpg">장미
	<input type="checkbox" name="flower" value="sunflower.jpg">해바라기
	<input type="submit" value="출력">
</form>
</body>
</html>