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
     
        @media (max-width: 1290px){
            .content {width: 100%;}

        }

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
      #signedup-content{
        position:relative;
        width:342px;
        margin: 0 auto;
      }
      .home-btn {
        height: 43px;
        width: 160px;
        margin: 2px;
        border: 1px solid;
        border-radius: 5px;
        color: #fff;
        background-color: #575757;
        float: left;
      } 
      .subscription-btn {
        height: 43px;
        width: 160px;
        margin: 2px;
        border: 1px solid;
        border-radius: 5px;
        color: #fff;
        background-color: #ea7475;
        float: right;
      }
    </style>
</head>
<body>
    <div id="header"></div>
    <div id="content">
     <div id="singedup-content">
        <h1>가입이 완료되었습니다.</h1>
        <div class="btnfield">
            <span>
                <button class="home-btn" onclick="location.href='#'">
                    홈으로 가기
                </button>
            </span>
            <span>
                <button class="subscription-btn" onclick="location.href='#'">
                    구독하러 가기
                </button>
            </span>
        </div>
    </div>
    </div>
    
</body>
</html>