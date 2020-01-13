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
      #signup-content{
        position:relative;
        width:342px;
        margin: 0 auto;
      }

      /*프로필 사진*/
      #profilefield {
          margin-bottom: 10px;
        }
      .profile-img {
          border-radius:50%;
        }

        /*이름, 닉네임 제외한 input*/
      .formfield > input {
        height: 10px;
        width: 300px;
        border: 1px solid #cccccc;
        border-radius: 3px;
        padding: 20px;
        margin: 2px;
      }

      /*이름, 닉네임 input*/
      .checkfield > span > .checkfield{
        height: 10px;
        width: 200px;
        border: 1px solid #cccccc;
        border-radius: 3px;
        padding: 20px;
        margin: 2px;
        float: left;
      }
      .emailcheck-btn, .nicknamecheck-btn {
          height: 52px;
          width: 90px;
          margin: 2px;
          border: 1px solid;
          border-radius: 5px;
          float: right;
          color: #fff;
          background-color: #ea7475;
      }

      /*추가정보 입력*/
      #additional-text {
        text-align: left;
        color:#686060; 
        margin-bottom: 4px;
      }
      .additional-info > input {
        height: 10px;
        width: 300px;
        border: 1px solid #cccccc;
        border-radius: 3px;
        padding: 20px;
        margin-bottom: 4px;
      }
      /*이용약관 동의*/
      .signup-agree {
        margin-top: 4px;
        float: left;
        padding: 0;
      }
      /*개인정보 수집 및 이용에 대한 동의*/
      .marketing-agree {
        float: left;
        padding: 0;
      }
      /*이용약관 동의, 개인정보 수집 및 이용에 대한 동의 font-style*/
      input[id="signup-agree"] + label, input[id="marketing-agree"] + label{
        width: 20px;
        height: 20px;
        font-size: 14px;
      }

      /*가입하기 버튼*/
      .signup-btn {
        margin: 10px 0 5px 0;
        width: 100%;
        height: 48px;
        color: #fff;
        border: 1px solid;
        border-radius: 5px;
        font-size: 16px;
        background-color: #ea7475;
      }


    </style>
</head>
<body>
    <div id="header"></div>
    <div id="content">
        <div id="signup-content">
            <div id="signup-title">
            <h1>회원가입</h1>
            </div>
            <div id="profilefield">
            <div class="profile-img" style="margin: 0 auto; width: 85px; height: 85px; background: url(${pageContext.request.contextPath}/resources/img/profile.png)  50% 50% / cover no-repeat;"></div>
            </div>
        <div id="signup-ipt">
        <form method="POST" name="signupForm" action="">
            <div class="checkfield">
              <span><input type="email" class="checkfield" placeholder="이메일주소"></span>
              <span><button class="emailcheck-btn">중복확인</button></span>
            </div>
            <div class="checkfield">
              <span>
              <input type="text" name="nickname" class="checkfield" placeholder="닉네임"></span>
              <span>
              <button class="nicknamecheck-btn">
                  중복확인
              </button>
              </span>
            </div>
            <div class="formfield">
              <input type="text" name="name" class="checkfield" placeholder="이름">
          </div>
            <div class="formfield">
            <input type="password" name="pw" placeholder="비밀번호(8자리이상, 특수문자, 대소문자)"><br />
            <input type="password" name="pwcheck" placeholder="비밀번호 확인">
            </div>
           <div class="formfield">
                <input type="text" name="phoneNum" placeholder="핸드폰번호">
            </div>
            <div class="formfield">
                <input type="text" name="" placeholder="우편번호">
            </div>
            <div class="formfield">
                <input type="text" name="address1" placeholder="주소">
            </div>
            <div class="formfield">
                <input type="text" name="address2" placeholder="상세주소">
            </div>
            <div class="formfield">
                <input type="text" name="userbirthday" placeholder="생년월일(6자리)">
            </div>

            <h4 id="additional-text">추가정보 입력</h4>
            <div class="additional-info">
                <input type="text" name="childBirthday" placeholder="자녀 생년월일(6자리)">
            </div>
            <div class="additional-info">
                <input type="text" name="instagramId" placeholder="인스타그램 아이디">
            </div>
            <div class="signup-agree">
                <input type="checkbox" id="signup-agree">
                <label for="signup-agree">이용 약관 동의</label>
            </div>
            <div class="marketing-agree">
            <input type="checkbox" id="marketing-agree">
            <label for="marketing-agree">개인정보 수집 및 이용에 대한 동의</label>
            </div>
            </div>
            <div>
            <button type="submit" class="signup-btn">
                가입하기
            </button>
        </div>
        </form>
    </div>
</div>
    <div id="footer"></div>
</body>
</html>