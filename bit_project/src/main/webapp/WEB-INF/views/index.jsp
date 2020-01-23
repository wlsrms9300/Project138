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

<title>Chat</title>
</head>
<body>
<div class="status-bar">
    </div>
    <header class="header">
      <div class="header__header-column">
        <h1 class="header__title">상담시작</h1>
      </div>
    </header>
    <main class="chats">
      <ul class="chats__list">
        <li class="chats__chat chat">
          <a href="chatstart.ct">
            <div class="chats__chat friend friend--lg">
              <div class="friend__column">
                <img src="${pageContext.request.contextPath}/resources/img/preview.jpg" class="m-avatar friend__avatar" />
                <div class="friend__content">
                  <span class="friend__name">
                    관리자명1
                  </span>
                  <span class="friend__bottom-text">
                    접속중
                  </span>
                </div>
              </div>
              <div class="friend__column">
                <span class="chat__timestamp">
                  채팅하기
                </span>
              </div>
            </div>
           	</a>
           	<a href="chatstart.ct">
            <div class="chats__chat friend friend--lg">
              <div class="friend__column">
                <img src="${pageContext.request.contextPath}/resources/img/preview.jpg" class="m-avatar friend__avatar" />
                <div class="friend__content">
                  <span class="friend__name">
                    관리자명2
                  </span>
                  <span class="friend__bottom-text">
                    접속중
                  </span>
                </div>
              </div>
              <div class="friend__column">
                <span class="chat__timestamp">
                  채팅하기
                </span>
              </div>
            </div>
            </a>
            <a href="chatstart.ct">
            <div class="chats__chat friend friend--lg">
              <div class="friend__column">
                <img src="${pageContext.request.contextPath}/resources/img/preview.jpg" class="m-avatar friend__avatar" />
                <div class="friend__content">
                  <span class="friend__name">
                    관리자명3
                  </span>
                  <span class="friend__bottom-text">
                    부재중
                  </span>
                </div>
              </div>
              <div class="friend__column">
                <span class="chat__timestamp">
                  채팅하기
                </span>
              </div>
            </div>
            </a>
            <a href="chatstart.ct">
            <div class="chats__chat friend friend--lg">
              <div class="friend__column">
                <img src="${pageContext.request.contextPath}/resources/img/preview.jpg" class="m-avatar friend__avatar" />
                <div class="friend__content">
                  <span class="friend__name">
                    관리자명4
                  </span>
                  <span class="friend__bottom-text">
                    부재중
                  </span>
                </div>
              </div>
              <div class="friend__column">
                <span class="chat__timestamp">
                  채팅하기
                </span>
              </div>
            </div>
          </a>
        </li>
      </ul>
    </main>
    <nav class="nav">
      <ul class="nav__list">
        <li class="nav__list-item">
          <a href="index.ct" class="nav__list-link">
            <img src="${pageContext.request.contextPath}/resources/icons/chats.png" style="width:30px; height:30px;">
          </a>
        </li> 
      </ul>
    </nav>
</body>
</html>