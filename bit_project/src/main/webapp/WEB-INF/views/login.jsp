<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport"
    content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Document</title>
    <link rel="stylesheet" href="./footer.css">
    <style>
      @media (max-width: 2000px){ 
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
          #login-content {
            position: relative;
            width: 342px;
            margin: 0 auto;
          }
          a {
            color: #333;
            text-decoration: none;
          }
          input {
            height: 10px;
            width: 300px;
            border: 1px solid #cccccc;
            border-radius: 3px;
            padding: 20px;
            margin: 2px;
          }

          /*회원가입, 아이디/비밀번호찾기 영역*/
          .login-append {
            overflow: hidden;
            padding: 6px 0 4px 0;
            font-size: 13px;
          }

          .login-append .txt-signup {
            float: left;
          }
          .login-append .txt-find {
            float: right;
          }
          .btn-login {
            margin: 10px 0 5px 0;
            width: 100%;
            height: 48px;
            color: #fff;
            border: 1px solid;
            border-radius: 5px;
            font-size: 16px;
            background-color: #ea7475;
          }

          button {
            border: 0;
            outline: 0;
            background-color: #fff;
          }
          #btn-left {
            float: left;
            padding: 0;
          }
          #btn-right {
            float: right;
            padding:0;
          }
      }

      /*모바일 버전*/
      @media (max-width: 480px){
      
      } 
     

    </style>
  </head>
  <body>
    <div id="header"></div>
    <div id="content">
      <div id="login-content">
        <p id="pc-text" style="text-align:center;">
          아직 ㅇㅇㅇㅇ 회원이 아니신가요?<br />
          지금 바로 가입하시고 다양한 혜택을 누리세요!
        </p>

        <h1>로그인</h1>

        <form method="POST" name="loginForm" action="">
          <div class="input-block">
            <div class="ipt-email">
              <input
                type="email"
                id="loginId"
                name="loginId"
                placeholder="아이디 (E-MAIL)"
              />
            </div>
            <div class="ipt-pwd">
              <input
                type="password"
                id="loginPw"
                name="loginPw"
                placeholder="비밀번호"
              />
            </div>
          </div>
          <div class="login-append">
            <div class="txt-signup">
              <label for="signup" class="link-signup">
                <a href="#" class="link-find">회원가입</a>
              </label>
            </div>
            <span class="txt-find">
              <a href="#" class="link-find">이메일</a>
              /
              <a href="#" class="link-find">비밀번호 찾기</a>
            </span>
          </div>
          <button type="submit" class="btn-login">
            로그인
          </button>

          <div>
            <span>
            <button type="button" onclick="location.href='#'" id="btn-left">
              <img src="${pageContext.request.contextPath}/resources/img/naver.png" style="width:165px; height:36px;"/>
            </button>
            </span>
            <span>
            <button type="button" onclick="location.href='#'" id="btn-right">
              <img src="${pageContext.request.contextPath}/resources/img/kakao.png" style="width:165px; height:auto;"/>
            </button>
            <br/><br/>
          </span>
          </div>
        </form>

      </div>
    </div>

   
  </body>
</html>
