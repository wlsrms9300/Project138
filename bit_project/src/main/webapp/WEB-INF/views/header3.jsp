<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath()%>/resources/css/header3.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<header id="real_header">
		<div id="wrap">
			<div id="intro_bg">
				<div class="header">
					<div class="main">
						<li><img
							src="${pageContext.request.contextPath}/resources/img/rumi.jpg"></li>
					</div>
					<ul class="nav">

						<div class="login_text">
							<a href="login.me">로그인</a>
						</div>

						<li><input type="checkbox" id="menuicon"> <label
							for="menuicon"> <span></span> <span></span> <span></span>
						</label>

							<div class="sidebar">
								<div id="sidemenu">
									<table class="menu_w">
										<tbody>
											<tr>
												<td><button name="button" class="subscribe-btn"
														onclick="location.href='subscribestep1.me'" type="button">구독하기</button></td>
												<td><a href="community.co">커뮤니티</a></td>
												<td><a href="product.pr">상품보기</a></td>
												<td><a href="qna.se">QnA</a></td>
												<td><a href="contactus.tazo">Contact Us</a></td>
											</tr>
											<tr>
												<td><button name="button" class="subscribe-btn"
														onclick="location.href='signup.me'" type="button">회원가입</button></td>
												<td></td>
												<td><a href="about.ma">이용방법</a></td>
												<td><a href="kindergarten.ms">어린이집</a></td>
												<td><a href="partner.ms">파트너</a></td>
											</tr>
										</tbody>
									</table>
									<table class="menu_m">
										<tbody>

											<tr>
												<td><button name="button1" class="subscribe-btn"
														onclick="location.href='subscribestep1.me'" type="button">구독하기</button></td>
											</tr>
											<tr>
												<td><button name="button1" class="subscribe-btn"
														onclick="location.href='signup.me'" type="button">회원가입</button></td>
											</tr>
											<tr>
												<td><a href="about.ma">이용방법</a></td>
											</tr>
											<tr>
												<td><a href="kindergarten.ms">어린이집</a></td>
											</tr>
											<tr>
												<td><a href="partner.ms">파트너</a></td>
											</tr>
											<tr>
												<td><a href="community.co">커뮤니티</a></td>
											</tr>
											<tr>
												<td><a href="product.pr">상품보기</a></td>
											</tr>
											<tr>
												<td><a href="qna.se">QnA</a></td>
											</tr>
											<tr><td><a href="contactus.tazo">Contact Us</a></td></tr>

										</tbody>
									</table>
								</div>
							</div></li>

					</ul>
				</div>
			</div>
		</div>
	</header>
</body>
</html>