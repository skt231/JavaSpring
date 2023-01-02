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
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
        *{margin:0; padding:0; box-sizing: border-box;}
        body{
            font-family: 'Noto Sans KR', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height:100vh;
            background-size: cover;
        }
        body::before {
            content: "";
            position: absolute; z-index: 1;
            top:0; right: 0; bottom:0; left: 0;
            background-color: rgba(0, 0, 0, .7);
        }
        .login-form {
            position:relative; z-index: 2;
        }
        .login-form h1{
            font-size: 32px; color:#fff;
            text-align:center;
            margin-bottom: 60px;
        }
        .int-area{
            width: 400px; position: relative;
            margin-top: 20px;
        }
        .int-area:first-child{margin-top: 0;}
        .int-area input {
            width: 100%;
            padding : 20px 10px 10px;
            background-color: transparent;
            border : none;
            border-bottom: 1px solid #999;
            font-size: 18px; color:#fff;
            outline:none;
        }
        .int-area label{
            position:absolute; left: 10px; top:15px;
            font-size:18px; color:#999;
            transition : all .5s ease;
        }
       
        .int-area input:focus+label,
        .int-area input:valid+label{
            top:-2px;
            font-size:13px; color:#fbb2c6;
        }
        .btn-area {margin-top:30px;}
        .btn-area button {
            cursor: pointer;
            width:100%; height:50px;
            background:#fbb2c6;
            color:#fff;
            font-size :20px;
            border:none;
            border-radius: 25px;
        }
        .btn-area button:hover{
            opacity: 0.8;
        }
        .caption{
            margin-top:20px;
            text-align:center;
        }
        .caption a{
            font-size:15px; color:#999;
            text-decoration: none;
        }
    </style>
    <script>
    if(<%=request.getParameter("isSuccess")%>==false){
    	alert('USER NAME 혹은 PASSWORD가 잘못 입력되었습니다.');
    }else if(<%=request.getParameter("isLogout")%>==true){
    	alert('로그아웃되었습니다. 로그인페이지로 이동합니다.');
    }else if(<%=request.getParameter("isStop")%>==true){
    	alert('로그인해야 이용할 수 있는 페이지입니다. 로그인페이지로 이동합니다.');
    }
    </script>
</head>
<body>
    <section class="login-form">
        <h1>인사관리 프로그램</h1>
        <form action="LoginServlet" method="get">
            <div class="int-area">
                <input type="text" name="user_id" id="user_id" autocomplete="off" required>
                <label for="user_id">USER NAME</label>
            </div>
            <div class="int-area">
                <input type="password" name="user_pw" id="user_pw" autocomplete="off" required>
                <label for="user_pw">PASSWORD</label>
                <div class="btn-area">
                    <a href=""><button type="submit" id="btn">LOGIN</button></a>
                </div>
            </div>
        </form>
        <div class="caption">
            <a href="">Forgot Password?</a>
        </div>
    </section>
</body>

</html>