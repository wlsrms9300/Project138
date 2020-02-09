<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "com.spring.login.LoginVO" %>
<%
	String email_sub3 = (String)session.getAttribute("email");
	String price = request.getParameter("price");
	LoginVO userDetail_sub3 = (LoginVO)session.getAttribute("userDetail");
	String merchant_uid = request.getParameter("merchant_uid");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="http://code.jquery.com/jquery-3.4.1.js"></script>
    <title>Document</title>
    <link href="${pageContext.request.contextPath}/resources/css/common1.css" rel="stylesheet">
</head>

<script>
$(document).ready(function() {
	
	//예약
	$('.text-field').click(function(){ 
		
		var beforeStr = '<%=email_sub3 %>';
		var afterStr = beforeStr.split('@');
	    var customer_uid = afterStr[0] + afterStr[1]; //이메일 customer_uid로 사용 
	
		$.ajax ({
			url:'/bit_project/schedulepayment.su',
			type:"POST",
			dataType:"json",
			data: {
				customer_uid : customer_uid,
				price : '<%=price %>',
				merchant_uid : '<%=merchant_uid%>'
			},
			contentType:'application/x-www-form-urlencoded; charset=utf-8',
			success:function(map) {
				if(map.res == "OK") {
					alert('결제예약 성공');
				} else {
					alert('결제예약 실패');
				}
			}, error:function() {
				alert('ajax통신 실패');
			}
		});
		location.href='<%=request.getContextPath()%>/';
	});
	
	
	//예약취소
	$('.test_cancel').click(function(){
		
		var beforeStr = '<%=email_sub3 %>';
		var afterStr = beforeStr.split('@');
	    var customer_uid = afterStr[0] + afterStr[1]; //이메일 customer_uid로 사용 
	
		$.ajax ({
			url:'/bit_project/unschedulepayment.me',
			type:"POST",
			dataType:"json",
			data: {
				customer_uid : customer_uid,
				price : '<%=price %>',
				merchant_uid : '<%=merchant_uid%>'
			},
			contentType:'application/x-www-form-urlencoded; charset=utf-8',
			success:function(map) {
				if(map.res == "OK") {
					alert('결제예약 성공');
				} else {
					alert('결제예약 실패');
				}
			}, error:function() {
				alert('ajax통신 실패');
			}
		});
		location.href='<%=request.getContextPath()%>/';
	});
	
});
    	
</script>

<body>
	<div style="height: 50px;">
	<header >
	 	<%@ include file="/WEB-INF/views/header2.jsp" %> 
	</header>
	</div>
    <div class="subContainer">
        <div class="subscribeHeader">
          <ul>
            <li class="on" style="cursor: pointer;">
              <h1>1</h1>
              <span>구독선택</span>
            </li>
            <li class="on" style="cursor: pointer;">
              <h1>2</h1>
              <span>결제내역</span>
            </li>
            <li class="on" style="cursor: pointer;">
              <h1>3</h1>
              <span>결제완료</span>
            </li>
          </ul>
        </div>
          <h1 class="text-field" style="cursor:pointer">성공적으로 구독하였습니다.</h1>
        </div>
     
        <div class="subscribeEndBox">
          <div class="">
            <input type="radio" id="step3" name="step3" checked>
            <label for="step3">
              <span class="Kinds">정기결제</span>
              <span class="loop">첫 배달일은 mm월 dd일입니다.</span>
              <div class="option">
                <span><%=price %>원</span>               
                <span>/1개월</span>          
                <em>배송비무료</em>
              </div>
            </label>
       
          </div>
          <div class="subscribeEnd">
            <button type="submit" name="button" onclick="location.href='product.pr'">위시리스트 설정</button>
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
                        <li class="icon s4"><a href="#"><span class="ir_pm">구글 플레이</span></a></li>
                        <li class="icon s5"><a href="#"><span class="ir_pm">아이폰 앱스토어</span></a></li>
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
                            <p>서울특별시 서초구 강남대로 459 <br><span class="bar2">대표자명 김진근</span>
                                <br><span class="bar2">사업자등록번호
                                    111-11-1111</span> 통신판매업신고번호 제 111호</p>
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