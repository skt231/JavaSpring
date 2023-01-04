<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>상품 선택</h1><br>
	<HR>
	<%=request.getParameter("Id") %>님 환영합니다.!!<br>
	</HR>
<form action="add.jsp" method="get" name="form1">
	<select  name="product" >
  		    <option  value="americano">아메리카노</option>
  	  		<option  value="caffe latte">카페라테</option>
 	    	 <option  value="cafe au lait">카페오레</option>
 	  		 <option  value="espresso">에스프레소</option>
 		   <option  value="greentea latte">녹차라테</option>
	</select>
	<input type="submit" value="추가"><br>
</form>
<a href="checkOut.jsp">계산</a>
</body>
</html>