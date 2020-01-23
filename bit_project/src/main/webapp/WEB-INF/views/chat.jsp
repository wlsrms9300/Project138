<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="${pageContext.request.contextPath}/resources/css/chat/styles.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-3.4.1.js"></script>
<link
     rel="stylesheet"
     href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
     integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
     crossorigin="anonymous"
/>
<title>Chats</title>
</head>
<body class="chats-body">
<div class="header-wrapper">
      <div class="status-bar">
      </div>
      <header class="header">
       <div>
        <h1 class="header__title">상담중</h1>
        </div>
        <div class="header__header-column">
          <a href="javascript:history.back()" class="header__back-btn">
            <i class="fas fa-arrow-left"></i>
          </a>
        </div>
      </header>
    </div>

    <main class="chat-screen">
      <ul class="chat__messages">
        <span class="chat__timestamp">2020.01.22</span>
        <li class="incoming-message message">
          <img src="${pageContext.request.contextPath}/resources/img/preview.jpg" class="m-avatar message__avatar" />
          <div class="message__content">
            <span class="message__bubble">
              무엇을 도와줄까?
            </span>
            <span class="message__author">관리자명</span>
          </div>
        </li>
        <li class="sent-message message">
          <div class="message__content">
            <span class="message__bubble">
              다신보지말자
            </span>
          </div>
        </li>
        <li class="incoming-message message">
          <img src="${pageContext.request.contextPath}/resources/img/preview.jpg" class="m-avatar message__avatar" />
          <div class="message__content">
            <span class="message__bubble">
              어렵다
            </span>
            <span class="message__author">관리자명</span>
          </div>
        </li>
        <li class="sent-message message">
          <div class="message__content">
            <span class="message__bubble">
              도망간다
            </span>
          </div>
        </li>
      </ul>
    </main>
    <div class="chat__write--container">
      <input
        type="text"
        class="chat__write"
        placeholder="Send message"
        class="chat__write-input" />    
      </div>
    </div>
</body>
</html>