<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.spring.login.LoginVO" %>
<!DOCTYPE html>
<%
	LoginVO userDetail_cal = (LoginVO)session.getAttribute("userDetail"); //유저정보
	String subscribe_cal = userDetail_cal.getSubscribe(); //구독여부 체크
	String email_cal = (String)session.getAttribute("email");
%>
<html>
<script src="http://code.jquery.com/jquery-3.4.1.js"></script>
<!-- 폰트어썸 아이콘 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<!-- 웹 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/resources/css/mypage/calendar.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/js/mypage/calendar.js"></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
$(document).ready(function(){
	window.onload = function() {
	var line = $('.calendar_line > td');
	line.attr('class', 'calday');
	}
	
	//반납신청시 이벤트 -- 반납신청시 ajax로 db에 추가 / 상태 default '대기' / 신청일 2일전에 상태 '확정'
	$('#true').click(function() {
		var text = $('#true').text(); //반납신청 중복확인
		var day = $('.head-day').text(); //day
		var month = $('.head-month').text(); //month
		var application_date = month + ' - ' + day;
		
		if(text == "반납신청") {
			var result = confirm('반납신청하시겠습까?');
			if(result == true) {
				$.ajax({
					url:'/bit_project/updatePS_application.my', //ps테이블의 return_application날짜갱신 후 state값 '대기'
					type:'POST',
					data: {
							email : '<%=email_cal %>',
							return_application : application_date
						  },
					dataType: 'json',
					contentType: 'application/x-www-form-urlencoded; charset=utf-8',
					success: function(data) {
						if(data.res == "OK") {
							$('#true').text(application_date);	
						} else {
							alert('반납신청 실패');
						}
					},
					error:function() {
						alert("ajax통신 실패!!!");
					}
				});

			}
		}
	});
	
	//반납취소 이벤트 -- 반납취소시 ajax로 db에서 삭제 / 상태가 '확정'이면 취소불가
	$('#false').click(function() {
		var text = $('#true').text();
		
		if(text != "반납신청") {
			var result = confirm('반납신청을 취소하시겠습니까?');
			if(result == true) {
				$.ajax({
					url:'bit_project/updatePS_reset.my' //ps테이블의 return_application날짜 null로 바꾸고 staet값 '대여중'
				});
				$('#true').text("반납신청");
			}
		}
	});
	
});
</script>
<body>
	<div class="calendar-wrap">
	<div class="elegant-calencar">
       <p id="reset">today</p>
        <div id="header" class="clearfix">
           <div class="pre-button"><</div>
            <div class="head-info">
                <div class="head-day"></div>
                <div class="head-month"></div>
            </div>
            <div class="next-button">></div>
        <% 
 			if(subscribe_cal.equals("Y")) { //구독중일 경우 반납신청/반납취소 버튼추가
        %>
            <div class="return-true">
            	<p id="true">반납신청</p>
            </div>
            <div class="return-false">
            	<p id="false">반납취소</p>
            </div>
        <%
 			} 
        %>
      
        </div>
        <%
        	if(subscribe_cal.equals("Y")) {	
        %>
        <table id="calendar">
            <thead>
                <tr>
                    <th>일</th>
                    <th>월</th>
                    <th>화</th>
                    <th>수</th>
                    <th>목</th>
                    <th>금</th>
                    <th>토</th>
                </tr>
            </thead>
            <tbody class="tbody">
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td style="background-color: #595ad4; border-radius: 50%; color: #fff;"></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
      	<%
        	} else {
        %>
        	<table id="calendar">
            <thead>
                <tr>
                    <th>일</th>
                    <th>월</th>
                    <th>화</th>
                    <th>수</th>
                    <th>목</th>
                    <th>금</th>
                    <th>토</th>
                </tr>
            </thead>
            <tbody class="tbody">
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td style="background-color: #595ad4; border-radius: 50%; color: #fff;"></td>
                    <td style="background-color: #cfa2fb; border-radius: 50%; color: #fff;"></td>
                    <td></td>
                    <td style="background-color: #77af6e; border-radius: 50%; color: #fff;"></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
        <%
        	}
        %>
    </div>
    <div class="calendar-content">
    	<div class="color-content" style="text-align:center;">
    		<div class="circle"><p>결제</p></div>
    		<div class="circle"><p>픽업</p></div>
    		<div class="circle"><p>배송</p></div>
    	</div>
    <%
    	if(subscribe_cal.equals("N")) {
    %>
    	<div class="subscribe_N"> <!-- 구독자가 아닐경우 -->
            <div class="subscribe_N_1">
                <b>미구독</b><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;정기구독을 이용해보세요</p> <!-- 수정필요 미구독(구독하기), 정기(반납횟수), 비정기(전환하기) -->
            </div>
            <div class="subscribe_N_2">
                <a href="subscribestep1.me"><b>구독하기 ></b></a>
            </div>
        </div>
    <%
    	} else {    		
    %>
		<div id="des1">
			<div class="des1-content1">
				<b>이달의 반납가능 횟수 :</b> <!-- 정기 구독자일경우 1 또는 2회 (비정기일 경우 횟수 0 )-->
			</div>
			<div class="des1-content2">
				<b>2</b>
			</div>
		</div>
		<table id="des2"> 
			
			<tr>
				<td style="color:rgb(109, 109, 109);">수요일 : </td>
				<td><b>예약확정</b></td>
			</tr>
			
		</table>
	<%
    	}
	%>
	</div>
    </div>
    
	

</body>
</html>