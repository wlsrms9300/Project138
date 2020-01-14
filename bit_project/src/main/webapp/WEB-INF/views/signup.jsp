<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link href="${pageContext.request.contextPath}/resources/css/member.css"
	rel="stylesheet">
<title>Document</title>

<style>
</style>
</head>
<body>
	<div style="height: 50px;">
	<header >
	 	<%@ include file="/WEB-INF/views/header2.jsp" %> 
	</header>
	</div>
	<div id="contentbox">
		<div id="signup-content">
			<div id="signup-title">
				<h1>회원가입</h1>
			</div>
			<div id="profilefield">
				<div class="profile-img"
					style="margin: 0 auto; width: 85px; height: 85px; background: url(${pageContext.request.contextPath}/resources/img/profile.png)  50% 50% / cover no-repeat;"></div>
			</div>
			<div id="signup-ipt">
				<form method="POST" name="signupForm" action="">
					<div class="checkfield">
						<span><input type="email" class="checkfield"
							placeholder="이메일주소" required="required"></span> <span><button
								class="emailcheck-btn">중복확인</button></span>
					</div>
					<div class="checkfield">
						<span> <input type="text" name="nickname"
							class="checkfield" placeholder="닉네임" required="required"></span> <span>
							<button class="nicknamecheck-btn">중복확인</button>
						</span>
					</div>
					<div class="formfield">
						<input type="text" name="name" class="checkfield" placeholder="이름" required="required"> 
					</div>
					<div class="formfield">
						<input type="password" name="pw"
							placeholder="비밀번호(8자리이상, 특수문자, 대소문자)"><br /> <input
							type="password" name="pwcheck" placeholder="비밀번호 확인" required="required">
					</div>
					<div class="formfield">
						<input type="text" name="phoneNum" placeholder="핸드폰번호" required="required">
					</div>
					<div class="formfield">
						<input type="text" name="" placeholder="우편번호">
					</div>
					<div class="formfield">
						<input type="text" name="address1" placeholder="주소" required="required">
					</div>
					<div class="formfield">
						<input type="text" name="address2" placeholder="상세주소" required="required">
					</div>
					<div class="formfield">
						<input type="text" name="userbirthday" placeholder="생년월일(6자리)" required="required">
					</div>

					<h4 id="additional-text">추가정보 입력</h4>
					<div class="additional-info">
						<input type="text" name="childBirthday" placeholder="자녀 생년월일(6자리)">
					</div>
					<div class="additional-info">
						<input type="text" name="instagramId" placeholder="인스타그램 아이디">
					</div>
					<div class="signup-agree">
						<input type="checkbox" id="signup-agree"> <label
							for="signup-agree">이용 약관 동의</label>
					</div>
					<div class="marketing-agree">
						<input type="checkbox" id="marketing-agree"> <label
							for="marketing-agree">개인정보 수집 및 이용에 대한 동의</label>
					</div>
			</div>
			<div>
				<button type="submit" class="signup-btn">가입하기</button>
			</div>
			</form>
		</div>
	</div>
	<!-- footer 시작 -->
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
								서울특별시 서초구 강남대로 459 <br>
								<span class="bar2">대표자명 김진근</span> <br>
								<span class="bar2">사업자등록번호 111-11-1111</span> 통신판매업신고번호 제 111호
							</p>
							<p>Copyright 2020 by Bit Inc. All right reserved</p>
						</address>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- footer 끝 -->

</body>
</html>