<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<link href="${pageContext.request.contextPath}/resources/css/member.css"
	rel="stylesheet">
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
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
	<div id="content">
		<div id="login-content">
			<p id="pc-text" style="text-align: center;">
				아직 ㅇㅇㅇㅇ 회원이 아니신가요?<br /> 지금 바로 가입하시고 다양한 혜택을 누리세요!
			</p>

			<h1>로그인</h1>

			<form method="POST" name="loginForm" action="">
				<div class="input-block">
					<div class="ipt-email">
						<input type="email" id="loginId" name="loginId"
							placeholder="아이디 (E-MAIL)" />
					</div>
					<div class="ipt-pwd">
						<input type="password" id="loginPw" name="loginPw"
							placeholder="비밀번호" />
					</div>
				</div>
				<div class="login-append">
					<div class="txt-signup">
						<label for="signup" class="link-signup"> <a href="signup.me"
							class="link-find">회원가입</a>
						</label>
					</div>
					<span class="txt-find"> <a href="findemail.me" class="link-find">이메일</a>
						/ <a href="forgotIdPw.me" class="link-find">비밀번호 찾기</a>
					</span>
				</div>
				<button type="submit" class="btn-login">로그인</button>

				<div>
					<span>
						<button type="button" onclick="location.href='#'" id="btn-left">
							<img
								src="${pageContext.request.contextPath}/resources/img/naver.png"
								style="width: 167px; height: 36px;" />
						</button>
					</span> <span>
						<button type="button" onclick="location.href='#'" id="btn-right">
							<img
								src="${pageContext.request.contextPath}/resources/img/kakao.png"
								style="width: 167px; height: auto;" />
						</button> <br />
					<br />
					</span>
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
