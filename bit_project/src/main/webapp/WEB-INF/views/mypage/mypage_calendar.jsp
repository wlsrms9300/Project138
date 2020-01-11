<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        </div>
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
            </tbody>
        </table>
    </div>
    <div class="calendar-content">
		<div id="des1">
			<div class="des1-content1">
				<b>이달의 반납가능 횟수 :</b>
			</div>
			<div class="des1-content2">
				<b>2</b>
			</div>
		</div>
		<table id="des2">
			<tr>
				<td style="color:rgb(109, 109, 109);" colspan="2"><b>* 매월 셋째주 화요일은 결제일입니다 *</b></td>
			</tr>
			<tr>
				<td style="color:rgb(109, 109, 109);">월요일 : </td>
				<td><b>픽업일</b></td>
			</tr>
			<tr>
				<td style="color:rgb(109, 109, 109);">목요일 : </td>
				<td><b>배송일</b></td>
			</tr>
			<tr>
				<td style="color:rgb(54, 54, 253);">토요일 : </td>
				<td><b>반납확정</b></td>
			</tr>
			<tr>
				<td style="color:rgb(252, 69, 69);">일요일 : </td>
				<td><b>예약확정</b></td>
			</tr>
		</table>
	</div>
    </div>
    
	

</body>
</html>