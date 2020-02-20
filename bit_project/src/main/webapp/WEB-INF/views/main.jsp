<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.spring.login.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:400,700,900&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/main/css/bootstrap.min.css" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/main/css/jquery-ui.css" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/main/css/owl.carousel.min.css" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/main/css/owl.theme.default.min.css" />

<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/main/css/jquery.fancybox.min.css"> --%>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/main/css/style.css">

<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/main/css/bootstrap-datepicker.css"> --%>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/main/fonts/flaticon/font/flaticon.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/main/fonts/icomoon/style.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/main/css/aos.css">



<script src="https://kit.fontawesome.com/fa509a9993.js"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/main/css/user_default.css">
<script src="http://code.jquery.com/jquery-3.4.1.js"></script>
<title>hello</title>

</head>
<script>
$(document).ready(function(){
   var chat = $('#chatframe');
   $('#chat img').click(function(){
      if(chat.is(':visible')) {
         chat.fadeOut();
      } else {
         chat.fadeIn();
      }
         
   });
});
</script>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">
	
	<!-- 채팅 -->
    <div id="chat" style="position: fixed; right: 1%; bottom: 1%; z-index: 9999;">
       <img src="${pageContext.request.contextPath}/resources/icons/chats.png" style="height: 70px;  width: 70px; cursor:pointer;"/>
    </div>
    <iframe id="chatframe" src="./index.ct" style="display:none; z-index:7777; position:fixed; width:385px; height:600px; right:3%; bottom:3%; border:1px solid #ffc9c9; border-radius:20px;"></iframe>
	<div class="site-wrap">
	<!-- 모바일 버전 -->
    <div id="chatM" style="position: fixed; right: 1%; bottom: 1%; z-index: 9999;">
        <a href="tel:0234869600">
         <img src="${pageContext.request.contextPath}/resources/icons/phone.png" style="height: 70px;  width: 70px; cursor:pointer;"/>
         </a>
    </div>
	
			<%@ include file="/WEB-INF/views/header1.jsp" %> 
		

		<div class="site-blocks-cover overlay"
			style="background-image: url(${pageContext.request.contextPath}/resources/img/main_test2.PNG);"
			data-aos="fade" id="home-section">

			<div class="container">
				<div class="row align-items-center justify-content-center">


					<div class="col-md-8 mt-lg-5 text-center">
						<h1 class="text-uppercase mb-5" data-aos="fade-up">
							JUST JINKEUN'S <BR> THAT'S FUCKIN ENOUGH
						</h1>

						<div data-aos="fade-up" data-aos-delay="100">
							<a onclick="loginChk();" href="#"
								class="btn smoothscroll btn-primary mr-2 mb-2 btn-hover"
								style="">회원가입</a> <a
								href="subscribestep1.me"
								class="btn smoothscroll btn-primary mr-2 mb-2 btn-hover"
								style="">구독하기</a>
						</div>
					</div>

				</div>
			</div>

			<a href="#about-section" class="mouse smoothscroll"> <span
				class="mouse-icon"> <span class="mouse-wheel"></span>
			</span>
			</a>
		</div>





		<section class="site-section border-bottom" id="team-section">
			<div class="container">
				<div class="row mb-5 justify-content-center">
					<div class="col-md-8 text-center">
						<h2 class="section-title mb-3" data-aos="fade-up"
							data-aos-delay="" style="color: #EA7475;">오늘부터 시작하세요</h2>
					</div>
				</div>
				<div class="row">


					<div class="col-md-6 col-lg-4 mb-4" data-aos="fade-up"
						data-aos-delay="">
						<div class="team-member" style="text-align: center;">
							<figure>
								<i class="fas fa-chess-rook fa-10x" alt="Image"
									class="img-fluid"></i>
							</figure>
							<div class="p-3">
								<h1>새 제품처럼</h1>
								<div class="position">
									<h3>&nbsp;모든 장난감을 새로 산것처럼</h3>
								</div>
								<div class="position">
									<h3>&nbsp;전문가의 꼼꼼한 소독처리</h3>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-lg-4 mb-4" data-aos="fade-up"
						data-aos-delay="100">
						<div class="team-member" style="text-align: center;">
							<figure>
								<i class="fas fa-gift fa-10x" class="img-fluid"></i>
							</figure>
							<div class="p-3">
								<h1>기념일에도</h1>
								<div class="position">
									<h3>&nbsp;아이들의 생일에도</h3>
								</div>
								<div class="position">
									<h3>&nbsp;깜짝 이벤트에도</h3>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-lg-4 mb-4" data-aos="fade-up"
						data-aos-delay="200">
						<div class="team-member" style="text-align: center;">
							<figure>
								<i class="fas fa-box fa-10x" class="img-fluid"></i>
							</figure>
							<div class="p-3">
								<h1>안전배송</h1>
								<div class="position">
									<h3>&nbsp;꼼꼼하고 재활용이 가능한</h3>
								</div>
								<div class="position">
									<h3>&nbsp;튼튼한 박스로 쓰윽 배송</h3>
								</div>
							</div>
						</div>
					</div>



				</div>
				<!-- row -->



			</div>
		</section>

		<section class="site-section bg-light border-bottom"
			id="pricing-section">
			<div class="container">
				<div class="row mb-5">
					<div class="col-12 text-center" data-aos="fade-up">
						<h2 class="section-title mb-3" style="color: #EA7475;">Pricing</h2>
					</div>
				</div>
				<div class="row mb-5">
					<div class="col-12 text-center" data-aos="fade-up">
						<h3 class="section-title mb-3" style="color: #EA7475;">정기 구독</h3>
					</div>
				</div>
				<div class="row mb-5">
					<div class="col-md-6 mb-4 mb-lg-0 col-lg-4" data-aos="fade-up"
						data-aos-delay="">
						<div class="pricing">
							<h3 class="text-center text-black">실버</h3>
							<div class="price text-center mb-4 ">
								<span><span style="color: #EA7475;">29000</span> / month</span>
							</div>
							<ul class="list-unstyled ul-check success mb-5">

								<li>무료배송</li>
								<li>월 1회 교환</li>
								<li>이벤트 참여</li>
								<li>실버 상품</li>
							</ul>
							<p class="text-center">
								<a href="subscribestep1.me" class="btn btn-secondary btn-hover">Buy Now</a>
							</p>
						</div>
					</div>

					<div class="col-md-6 mb-4 mb-lg-0 col-lg-4" data-aos="fade-up"
						data-aos-delay="100">
						<div class="pricing">
							<h3 class="text-center text-black">골드</h3>
							<div class="price text-center mb-4 ">
								<span><span style="color: #EA7475;">59000</span> / month</span>
							</div>
							<ul class="list-unstyled ul-check success mb-5">

								<li>무료배송</li>
								<li>월 2회 교환</li>
								<li>이벤트 참여</li>
								<li>골드 상품</li>
							</ul>
							<p class="text-center">
								<a href="subscribestep1.me" class="btn btn-primary btn-hover"
									style="background: #EA7475; border-color: #EA7475;">Buy Now</a>
							</p>
						</div>
					</div>

					<div class="col-md-6 mb-4 mb-lg-0 col-lg-4" data-aos="fade-up"
						data-aos-delay="200">
						<div class="pricing">
							<h3 class="text-center text-black">플래티넘</h3>
							<div class="price text-center mb-4 ">
								<span><span style="color: #EA7475;">79000</span> / month</span>
							</div>
							<ul class="list-unstyled ul-check success mb-5">

								<li>무료배송</li>
								<li>월 2회 교환</li>
								<li>이벤트 참여</li>
								<li>모든 상품</li>
							</ul>
							<p class="text-center">
								<a href="subscribestep1.me" class="btn btn-secondary">Buy Now</a>
							</p>
						</div>
					</div>
				</div>

				<div class="row mb-5">
					<div class="col-12 text-center" data-aos="fade-up">
						<h3 class="section-title mb-3" style="color: #EA7475;">비정기 구독</h3>
					</div>
				</div>

				<div class="row mb-5">
					<div class="col-md-6 mb-4 mb-lg-0 col-lg-4" data-aos="fade-up"
						data-aos-delay=""></div>

					<div class="col-md-6 mb-4 mb-lg-0 col-lg-4" data-aos="fade-up"
						data-aos-delay="100">
						<div class="pricing">
							<h3 class="text-center text-black">비정기</h3>
							<div class="price text-center mb-4 ">
								<span><span style="color: #EA7475;">29000</span> / month</span>
							</div>
							<ul class="list-unstyled ul-check success mb-5">

								<li>무료배송</li>
								<li>1~2개월</li>
								<li>정기구독 전환가능</li>

							</ul>
							<p class="text-center">
								<a href="subscribestep1.me" class="btn btn-primary"
									style="background: #EA7475; border-color: #EA7475;">Buy Now</a>
							</p>
						</div>
					</div>

					<div class="col-md-6 mb-4 mb-lg-0 col-lg-4" data-aos="fade-up"
						data-aos-delay="200"></div>


				</div>
			</div>
		</section>

		<section class="site-section border-bottom" id="services-section">
			<div class="container">
				<div class="row mb-5">
					<div class="col-12 text-center" data-aos="fade">
						<h2 class="section-title mb-3" style="color: #EA7475;">Our
							Services</h2>
					</div>
				</div>
				<div class="row align-items-stretch" style="text-align: center;">
					<div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up">
						<div class="unit-4">
							<div class="unit-4-icon mr-4" style="margin-right: 0 !important;">
								<span class="text-primary flaticon-startup"
									style="color: #EA7475 !important;"></span>
							</div>
							<div>
								<h3>STEP1</h3>
								<p>회원가입</p>
								<p>
									<a href="#" style="color: #EA7475;">Learn More</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up"
						data-aos-delay="100">
						<div class="unit-4">
							<div class="unit-4-icon mr-4" style="margin-right: 0 !important;">
								<span class="text-primary flaticon-graphic-design"
									style="color: #EA7475 !important;"></span>
							</div>
							<div>
								<h3>STEP2</h3>
								<p>구독 신청 후 요금제 선택</p>
								<p>
									<a href="#" style="color: #EA7475;">Learn More</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 mb-4 mb-lg-4" data-aos="fade-up"
						data-aos-delay="200">
						<div class="unit-4">
							<div class="unit-4-icon mr-4" style="margin-right: 0 !important;">
								<span class="text-primary flaticon-settings"
									style="color: #EA7475 !important;"></span>
							</div>
							<div>
								<h3>STEP3</h3>
								<p>위시리스트 작성</p>
								<p>
									<a href="#" style="color: #EA7475;">Learn More</a>
								</p>
							</div>
						</div>
					</div>


				</div>


			</div>
		</section>

		<section class="site-section testimonial-wrap bg-light border-bottom"
			id="testimonials-section" data-aos="fade">
			<div class="container">
				<div class="row mb-5">
					<div class="col-12 text-center">
						<h2 class="section-title mb-3" style="color: #EA7475;">구독하기</h2>
					</div>
				</div>
			</div>
			<div class="col-12 text-center" data-aos="fade-up">
				<div>
					<div class="testimonial">

						<blockquote class="mb-5">
							<p>&ldquo;우리 아이를 위한 새로운 선물 지금 바로 시작하세요&rdquo;</p>
						</blockquote>

						<figure
							class="mb-4 d-flex align-items-center justify-content-center">
							<div>
								<div data-aos="fade-up" data-aos-delay="100">
									<a onclick="loginChk();" href="#"
										class="btn smoothscroll btn-primary mr-2 mb-2"
										style="background: #EA7475; border-color: #EA7475;">회원가입</a> <a
										href="subscribestep1.me"
										class="btn smoothscroll btn-primary mr-2 mb-2"
										style="background: #EA7475; border-color: #EA7475;">구독하기</a>
								</div>
							</div>
						</figure>
					</div>
				</div>

			</div>
		</section>



		<section class="site-section" id="about-section">
			<div class="container">
				<div class="row mb-5">

					<div class="col-lg-6 ml-auto mb-5 order-1 order-lg-2"
						data-aos="fade" data-aos="fade-up" data-aos-delay="">
						<img src="${pageContext.request.contextPath}/resources/img/calendar.png" alt="Image"
							class="img-fluid rounded">
					</div>
					<div class="col-lg-6 order-2 order-lg-1" data-aos="fade">

						<div class="row">

							<div class="col-md-12 mb-md-5 mb-0 col-lg-12" data-aos="fade-up"
								data-aos-delay="" style="text-align: center;" id="delivery">
								<div class="unit-4">
									<i class="far fa-lightbulb fa-7x" style="padding: 30px;"></i>
									<div>
										<h1>매주 목요일 배송</h1>
										<br>
										<h4>다양한 장난감을 사용하고 싶다면</h4>
										<h4>지금 당장 구독해주세요!</h4>
									</div>
								</div>
							</div>

						</div>
					</div>

				</div>
			</div>
		</section>

		<%@ include file="/WEB-INF/views/footer.jsp" %> 

	</div>
	<!-- .site-wrap -->
	
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/main/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/main/js/jquery-ui.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/main/js/popper.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/main/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/main/js/owl.carousel.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/main/js/jquery.countdown.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/main/js/jquery.easing.1.3.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/main/js/aos.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/main/js/jquery.fancybox.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/main/js/jquery.sticky.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/main/js/isotope.pkgd.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/main/js/main.js"></script>
</body>
<style>
	#footer{height: 369px;}
</style>
<script>
	function loginChk(){
		var email_a = '<%=(String)session.getAttribute("email")%>';
		if(email_a != 'null') {
			alert("로그아웃 후 이용해주세요");
			return false;
		}else {
			window.location.href = "signup.me";	
		}
	}
</script>
</html>