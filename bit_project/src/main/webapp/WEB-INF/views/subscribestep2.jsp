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
    <link href="${pageContext.request.contextPath}/resources/css/common1.css" rel="stylesheet">
</head>
<body>
    <div class="subContainer">
        <div class="subscribeHeader">
          <ul>
            <li class="on" style="cursor: pointer;" onclick="location.href='#'">
              <h1>1</h1>
              <span>구독선택</span>
            </li>
            <li class="on" style="cursor: pointer;">
              <h1>2</h1>
              <span>결제내역</span>
            </li>
            <li>
              <h1>3</h1>
              <span>결제완료</span>
            </li>
          </ul>
        </div>
      
          <h1 class="text-field">결제 상세 내역을 확인해주세요.</h1>

        </div>
        <form id="subscribe-term" action="" onsubmit="return checkForm();" method="post">
        <div class="choiceTerm">
          <div class="">
            <input type="radio" id="choiceTerm01" name="choiceTerm" value="s1MsalePrice" checked>
            <label for="choiceTerm01">
              <span class="Kinds">정기결제</span>
              <span class="loop">첫 배달일은 mm월 dd일입니다.</span>
              <input type="hidden" name="SubPrice" value="39000(가격)">
              <div class="option">
                <span>39,000원</span>
                <span>/1개월</span>
                <em>배송비무료</em>
              </div>
            </label>
       
          </div>
          <div class="subscribeNext">
            <button type="submit" name="button">카카오페이 결제</button>
          </div>
          </form>

          </div>
</body>
</html>