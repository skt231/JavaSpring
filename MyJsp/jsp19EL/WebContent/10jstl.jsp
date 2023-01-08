<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 이거 추가해야 jstl작동 -->
<!-- 기본 확인 -->
<!-- out은 속성 Value에 값을 화면에 출력한다. -->
<c:out value="hello world!"/>${param.name }<br>

<c:set var="msg" value="hello"/>
<!--set은 속성 value에 값을 var에 넣는다.  -->
\${msg }=${msg }<br>

<c:set var="age" value="30"/>
\${age }=${age }<br>
<c:set var="age">
30
</c:set>


<%-- <c:set var="member" value="<%=new com.human.ex.Human() %>"/>
<c:set target="${member }" property="name" value="전수빈"/>
<c:set target="${member }" property="id" value="abc"/>
\${member } = ${member } <hr>
\${member.id } = ${member.id } <hr> --%>

<c:set var="add" value="${10+5 }"/>
\${add }=${add }<br>
<c:set var="flag" value="${20>5}"/>
\${flag}=${flag }<br>


<form action="12jstlifchoose.jsp">
색생을 선택하세요<br>
	<select id="color" name="color">
		<option value="1" > 빨강</option>
		<option value="2" > 노랑</option>
		<option value="3" > 파랑</option>
	</select>
	<input type="submit" value="전송">
</form>


<%
	String[] movieList={"아바타2","오징어게임","ET","쥬라기공원"};
	pageContext.setAttribute("movieList", movieList);
%>
<c:forEach var="movie" items="${pageScope.movieList}">
	${movie }<br>
</c:forEach>
<br>
<table border="1" style="width:100%;text-align:center;">
<tr>
	<th>index</th><th>count</th><th>value</th>
</tr>
<c:forEach var="movie" items="${movieList }" varStatus="status">
	<tr>
		<td>${status.index}</td><td>${status.count }</td><td>${movie }</td>
	</tr>
</c:forEach>
</table>
<br>
<ul>
	<c:forEach var="movie" items="${movieList }" varStatus="status">
		<c:choose>
			<c:when test="${status.first }">
				<li style="font-weight:bold;color:red;">${movie }</li>
			</c:when>
			<c:when test="${status.last }">
				<li style="font-weight:bold;color:red;">${movie }</li>
			</c:when>
			<c:otherwise>
				<li style="font-weight:bold;color:blue;">${movie }</li>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</ul>

<br>
<c:forEach var="movie" items="${movieList }" varStatus="status">
	${movie }<c:if test="${not status.last }">,</c:if>		
</c:forEach>
<br>
<c:forEach var="cnt" begin="0" end="10" varStatus="status">
	${status.index }:${cnt }<c:if test="${not status.last }">,</c:if>
</c:forEach>
<br>
<c:forEach var="cnt" begin="7" end="10" varStatus="status">
${status.index }:${status.count }:${cnt }<c:if test="${not status.last }">,</c:if>	
</c:forEach>
<br>
<c:forEach var="cnt" begin="2" end="10" varStatus="status" step="2">
${status.index }:${status.count }:${cnt }<c:if test="${not status.last }">,</c:if>	
</c:forEach>
<br>
<!-- https://tomcat.apache.org/taglibs/ 
jakarta-taglibs-standard-1.1.2.zip
-->
<br>
<form method="get" action="11jstl.jsp">
	<input type="checkbox" name="item" value="신발">신발
	<input type="checkbox" name="item" value="가방">가방
	<input type="checkbox" name="item" value="벨트">벨트
	<input type="checkbox" name="item" value="모자">모자
	<input type="checkbox" name="item" value="시계">시계
	<input type="checkbox" name="item" value="쥬얼리">쥬얼리
	<input type="submit" value="전송">
</form>


<c:forTokens var="city" items="서울.인천,대구.부산" delims=",">
	${city }<br>
</c:forTokens>
<c:forTokens var="city" items="서울.인천,대구.부산" delims=",.">
	${city }<br>
</c:forTokens>
<hr><hr><hr>

<c:import url="01ELStart.jsp" var="data"></c:import>
${data }


<hr><hr><hr>
	<c:url value="images/pic.jpg" var="data"/>
	<h3>${data }</h3>
	<img src="${data }" width="100%" height="100%">
<hr>

<%-- <c:redirect url="http://www.google.com"></c:redirect>	 --%>


</body>
</html>















