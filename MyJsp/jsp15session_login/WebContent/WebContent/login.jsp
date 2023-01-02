<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="jquery-3.4.1.js"></script>
    <script>
	if(<%=request.getParameter("isSucess")%>==false){
	alert ("User NAME 혹은 PASSWORD가 잘못 입력되었습니다.");
	}else if(<%=request.getParameter("isLogout") %>==true){
	alert("로그아웃 되었습니다. 로그인페이지로 이동합니다.");
	}else if(<%=request.getParameter("isLogin")%>==false){
	alert('로그인해야 이용할수 있는 페이지 입니다. 로드인 페이지로 이동합니다.');
      }
    </script>
</head>
<body>
    <section class="login-form">
         <h1>인사관리 프로그램</h1>
   <form action="Login.Servlet" method="get">
   	<label for="user_id">USER NAME</label>
       <input type="text" name="user_id" id="user_id" autocomplete="off" required>
       <label for="user_pw">PASSWORD</label>
       <input type="password" name="user_pw" id="user_pw" autocomplete="off" required>
       <button type="submit" id="btn">LOGIN</button>
   </form>
        <div class="caption">
            <a href="">Forgot Password?</a>
        </div>
    </section>
</body>

</html>