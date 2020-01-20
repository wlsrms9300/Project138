<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="com.spring.menu.CompanyVO" %>
	<%@ page import="java.util.List" %>
	<%
		List<CompanyVO> list = (List<CompanyVO>)request.getAttribute("list");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Kindergarten</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/kindergarten.css" />">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<title>Insert title here</title>
</head>
<body>
	<div style="height: 50px;">
		<header>
			<%@ include file="/WEB-INF/views/header3.jsp"%>
		</header>
	</div>
	<div class="container">
		<div class="info-wrapper">
			<div class="info-rent">
				<div class="h1">
					<h1>대여</h1>
				</div>

				<div class="h3">
					<h3>장난감이 필요한 순간,</h3>
					<h3>진근이네로 충분합니다.</h3>
				</div>

				<div class="p">
					<p>어린이집의 모든 아이들이 매 달 새로운 장난감을 위생적으로 이용하여,</p>
					<p>어린이와 학부모 선생님들까지 만족하는 서비스를 만들어 갑니다.</p>
				</div>


				<i class="fas fa-gift fa-9x"></i>

			</div>
			<div class="info-buy">
				<div class="h1">
					<h1>매입</h1>
				</div>

				<div class="h3">
					<h3>처리하기 힘든 장난감</h3>
					<h3>더이상 힘들지 않습니다.</h3>
				</div>

				<div class="p">
					<p>더 이상 필요하지 않은 장난감을 매입하여,</p>
					<p>어린이집 뿐만 아니라 환경에도 도움이 되는 문화를 만들어 갑니다.</p>
				</div>

				<i class="fas fa-hand-holding-usd fa-9x"></i>

			</div>
		</div>
		<div class="contact-us">

			<div id="contact">
				<div class="h1">
					<h1>진근이네와 함께할</h1>
					<h1>어린이집을 찾습니다.</h1>
				</div>

				<span>
					<button class="btn-contact-us">CONTACT US</button>
				</span>
			</div>
			<div id="icon">
				<i class="fas fa-home fa-9x"></i>

			</div>
 
		</div>
		<div class="kindergarten-list">
		  <ul style=" display: flex;">
		  	<li style="flex: 8.5;">
		  	<%
			 	for (int i = 0; i < list.size(); i++) {
					CompanyVO cvo = list.get(i);
			%>
			<img src="/bit_project/image/<%=cvo.getImg() %>">
			
			<%} %>
			</li>
		  </ul>
	   </div>
	</div>
	<div style="height: 50px;">
		<footer>
			<%@ include file="/WEB-INF/views/footer.jsp"%>
		</footer>
	</div>
</body>
</html>