<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
    #content {
        text-align: center;
        position: absolute;
        top: 20%;
        width: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-wrap: nowrap;
      }
      #find-content{
        position:relative;
        width:370px;
        margin: 0 auto;
      }
     
      .login-btn {
        height: 43px;
        width: 170px;
        margin: 2px;
        border: 1px solid;
        border-radius: 5px;
        color: #fff;
        background-color: #ea7475;
        float: left;
      }

      .home-btn {
        height: 43px;
        width: 170px;
        margin: 2px;
        border: 1px solid;
        border-radius: 5px;
        color: #fff;
        background-color: #575757;
        float: right;
      } 
    </style>
</head>
<body>
    <div id="header"></div>
    <div id="content">
     <div id="find-content">
        <h1>이메일 찾기</h1>
        <h4>찾으시는 이메일은 gggg@gmail.com 입니다.</h4>
        <div class="btnfield">
            <span>
                <button class="login-btn" onclick="location.href='#'">
                    로그인하러 가기
                </button>
            </span>
            <span>
                <button class="home-btn" onclick="location.href='#'">
                    홈으로 가기
                </button>
            </span>
        </div>
    </div>
    </div>
</body>
</html>