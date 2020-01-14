<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<link rel="stylesheet"
	href="<c:url value="/resources/css/contactus.css" />">

<!-- 페이스북 메타 태그 -->
<meta property="og:title" content="" />
<meta property="og:url" content="https://" />
<meta property="og:image" content="https://.jpg" />
<meta property="og:description" content="" />

<!-- 트위터 메타 태그 -->
<meta name="twitter:card" content="summary">
<meta name="twitter:title" content="">
<meta name="twitter:url" content="https:///">
<meta name="twitter:image" content="https://.jpg">
<meta name="twitter:description" content="">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<!-- 웹 폰트 -->
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean"
	rel="stylesheet">

<link href="<%=request.getContextPath()%>/resources/css/footer.css"
	rel="stylesheet" type="text/css" />
</head>
<body>

	<div style="height: 60px;">
		<header>
			<%@ include file="/WEB-INF/views/header3.jsp"%>
		</header>
	</div>
	<div id="contact-us-wrapper">
		<div id="logo">
			<h1>Contact Us</h1>
		</div>
		<br> <br>
		<div id="contact-us-form">
			<form action="contactus_mailsend.ms" method="POST">
				<table>
					<tr>
						<td class="field-text2">이름</td>
					</tr>
					<tr>
						<td><input class="field-text" type="text" name="name"
							placeholder="내용을 입력해주세요."></td>
					</tr>
					<tr>
						<td class="field-text2">연락처</td>
					</tr>
					<tr>
						<td><input class="field-text" type="text" name="phone"
							placeholder="내용을 입력해주세요."></td>
					</tr>
					<tr>
						<td class="field-text2">이메일</td>
					</tr>
					<tr>
						<td><input class="field-text" type="text" name="email"
							placeholder="내용을 입력해주세요."></td>
					</tr>
					<tr>
						<td class="field-text2">문의사항</td>
					</tr>
					<tr>
						<td><textarea name="content" class="text-area" rows="5"
								cols="20"></textarea></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td><div class="span">
								<button class="btn">제출</button>
							</div></td>
					</tr>

				</table>
				<input type="hidden" name="to" value="tazo0519@naver.com">
				<!-- 여기에 자신의 이메일 계정 -->
				<input type="hidden" name="from" value="tazo0519@naver.com">
				<!-- 여기에 자신의 이메일 계정 -->
			</form>
		</div>

		<hr>
		<div id="map-wrapper">
			<div id="map"></div>
			<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bbb3254cd74d562e441c933eb6805411"></script>
			<script>
				var container = document.getElementById('map');
				var options = {
					center : new kakao.maps.LatLng(37.527439, 127.0512505),
					level : 3
				};

				var map = new kakao.maps.Map(container, options);
				function setCenter(lat, lng) {
					map.setCenter(new kakao.maps.LatLng(lat, lng));
				}
			</script>
			<div id="information">
				<table>
					<tr>
						<td><img src="./resources/img/icon1.PNG"></td>
						<td><b>주소</b></td>
						<td>서울시 강남구 도산대로 89길 49</td>
					</tr>
					<tr>
						<td><img
							src="<%=request.getContextPath()%>/resources/img/icon2.PNG"></td>
						<td><b>TEL</b></td>
						<td>010-3565-5410</td>
					</tr>
					<tr>
						<td><img
							src="<%=request.getContextPath()%>/resources/img/icon3.PNG"></td>
						<td><b>FAX</b></td>
						<td>010-3565-5410</td>
					</tr>
					<tr>
						<td><img
							src="<%=request.getContextPath()%>/resources/img/icon4.PNG"></td>
						<td><b>E.mail</b></td>
						<td>tazo0519@naver.com</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
<footer id="footer">
	<div id="footer_sns">
		<div class="container">
			<div class="footer_sns">
				<ul>
					<li class="icon s1"><a href="#"><span class="ir_pm">트위터</span></a></li>
					<li class="icon s2"><a href="#"><span class="ir_pm">페이스북</span></a></li>
					<li class="icon s3"><a href="#"><span class="ir_pm">인스타그램</span></a></li>
					<li class="icon s4"><a href="#"><span class="ir_pm">구글
								플레이</span></a></li>
					<li class="icon s5"><a href="#"><span class="ir_pm">아이폰
								앱스토어</span></a></li>
				</ul>
				<div class="tel">
					<a href="#">ARS <em>1544-5252</em></a>
				</div>
			</div>
		</div>
	</div>
	<div id="footer_infor">
		<div class="container">
			<div class="row">
				<div class="footer_infor">
					<!-- <h2><img src="assets/img/logo_footer.png" alt="megabox"></h2> -->
					<h2>로고1</h2>
					<ul>
						<li><a href="#">회사소개</a></li>
						<li><a href="#">채용정보</a></li>
						<li><a href="#">제휴/광고/부대사업 문의</a></li>
						<li><a href="#">이용약관</a></li>
						<li><a href="#">개인정보처리방침</a></li>
						<li><a href="#">고객센터</a></li>
						<li><a href="#">윤리경영</a></li>
					</ul>
					<address>
						<p>
							서울특별시 서초구 강남대로 459 <br> <span class="bar2">대표자명 김진근</span> <br>
							<span class="bar2">사업자등록번호 111-11-1111</span> 통신판매업신고번호 제 111호
						</p>
						<p>Copyright 2020 by Bit Inc. All right reserved</p>
					</address>
				</div>
			</div>
		</div>
	</div>
</footer>
</html>