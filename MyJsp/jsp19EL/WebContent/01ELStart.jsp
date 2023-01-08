<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 표현어 (Expression language) 값을 쉽게 가져오기 위해서 사용 
el과 JSTL은 Model에 java를 제거하기 위해 사용한다.
-->
${"hello" }<br>
<%="hello" %><br>  <!-- 표현식 -->
<%out.println("hello"); %><!-- 스크립틀릿 -->

<!--  EL로 표시할수 있는 자료형 (다른언어도 많이 쓰니 알아두는게 좋음)-->
정수형:${10 }<br>
실수형:${20.3 }<br>
문자형:${"park" }<br>
논리형:${true }<br>
null  :${null}<br>
<!-- 일반적으로 null을 찎으면 null이라고 나오지만  el에서는 아무것도 출력되지 않는다. -->
<br>
<!-- EL연산 -->
<!--  div == /
	mod == %
	> == gt
-->
\${5+2} =${5+2}<br><!--  ${5+2} =7-->
\${5/2} =${5/2}<br><!--  ${5/2} =2.5-->
\${5 div 2} =${5 div 2}<br>
\${5 mod 2} =${5 mod 2}<br>
\${5>2} =${5>2}<br><!--  ${5/2} =true-->
\${2 gt 10} =${2 gt 10}<br><!--  false-->
\${5>2?5:2} =${5>2?5:2}<br><!--  5-->
\${(5>2)||(2<10)} =${(5>2)||(2<10)}<br><!--  ${(5>2)||(2<10)} =true-->

<!--  EL getParameter 처리방법 -->
<form method="get" action="02El.jsp">
<br>		설명  : <input type="text" name="name">
<br>		숫자1:<input type="text" name="num1">
<br>		숫자2:<input type="text" name="num2">
<br> 		<input type="submit" value="로그인">
</form>

</body>
</html>











