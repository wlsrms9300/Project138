<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.spring.chat.ChatVO" %>
<%@ page import="com.spring.login.LoginVO" %>
<%@ page import ="java.util.ArrayList" %>
<%
	String nickname = null;
	LoginVO userDetail = null;
	String usergroup = null;
	userDetail = (LoginVO)session.getAttribute("userDetail"); //유저정보
	if(userDetail != null) {
		if(userDetail.getUsergroup().equals("admin")) {
			nickname = userDetail.getNickname();
			usergroup = userDetail.getUsergroup();
		} 
	}
	
	ArrayList<ChatVO> adminlist = (ArrayList<ChatVO>)request.getAttribute("adminlist"); //관리자 목록 
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
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

<!-- chat JS -->
<script type="text/javascript">

var ws;
var userid = '<%=nickname%>';
var target = '${taeget}';

function connect() {
	//웹소켓 객체 생성하는 부분
	//핸들러 등록(연결 생성, 메시지 수신, 연결 종료)
	
	//url 연결할 서버의 경로
	ws = new WebSocket('ws://localhost:8080/bit_project/chat');
	
	ws.onopen = function() {
		console.log('연결 생성');
		register();
	};
	
	ws.onmessage = function(e) {
		console.log('메시지 받음');
		var data = e.data;
		//alert("받은 메시지 : " + data);
		addMsg(data);
	};
	
	ws.onclose = function() {
		console.log('연결 끊김');
	};
};

function addMsg(msg) { //원래 채팅 메시지에 방금 받은 메시지 더해서 설정하기 
	var receiveText = '<li class="incoming-message message"><img src="${pageContext.request.contextPath}/resources/img/preview.jpg" class="m-avatar message__avatar" /><div class="message__content"><span class="message__bubble">'+ msg +'</span><span class="message__author">관리자명</span></div></li>';
	$('.chat__messages').append(receiveText);
	$(".chat-screen").scrollTop($(".chat-screen")[0].scrollHeight);
};

function register() { //메시지 수신을 위한 서버에 id 등록하기
	var msg = {
		target : 'target',
		type : "register", //메시지 구분하는 구분자 - 상대방 아이디와 메시지 포함
		userid : userid
	};
	ws.send(JSON.stringify(msg));
};

function sendMsg() {
	//var msg = $('#chatMsg').val();
	//ws.send(userid + " : " + msg);
	var msg = {
			type : "chat", //메시지 구분하는 구분자 - 상대방 아이디와 메시지 포함해서 보냄
			target :  '${target}', //상대방 아이디 
			message : $('#chat__content-text').val()
	};
	ws.send(JSON.stringify(msg));
};

//엔터키 이벤트
$(document).ready(function() {
	$('#chat__content-text').keydown(function(key) {
		if(key.keyCode == 13 && $('#chat__content-text').val() != '') {
			chat = $(this).val();
			var sentText = '<li class="sent-message message"><div class="message__content"><span class="message__bubble">'+ chat +'</span></div></li>';
			$('.chat__messages').append(sentText);
			sendMsg();
			$(this).val('');
			$(".chat-screen").scrollTop($(".chat-screen")[0].scrollHeight);
		}
	});
});

//페이지가 로딩되면 connect 실행
$(function() {
	if(<%=usergroup %>.equals("admin")) {
		System.out.println("왜");
		connect();	
	}	

}); 

</script>

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
        
        <%
          if(userDetail == null || !(userDetail.getUsergroup().equals("admin"))) {  //관리자가 아니거나 유저정보가 null값이면(비회원) list에 관리자 목록출력
        	for(int i = 0; i < adminlist.size(); i++) { 
        		ChatVO list = (ChatVO)adminlist.get(i);
        %>
          <a href="chatstart.ct?nickname=<%=list.getNickname() %>">
            <div class="chats__chat friend friend--lg">
              <div class="friend__column">
                <img src="/bit_project/image/<%=list.getImg() %>" class="m-avatar friend__avatar" />
                <div class="friend__content">
                  <span class="friend__name">
                    <%=list.getNickname() %>
                  </span>
                  <span class="friend__bottom-text">
                    접속중(어떻게 알지?)
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
        <%
        		}
        	}
        %>
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