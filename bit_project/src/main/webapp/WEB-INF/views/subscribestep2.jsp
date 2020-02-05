<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.spring.member.MemberVO" %>
<%
	String user_email = (String)session.getAttribute("email");
	MemberVO membervo = (MemberVO)request.getAttribute("membervo");
	String grade = (String)request.getAttribute("grade");
	int price = (int)request.getAttribute("price");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="${pageContext.request.contextPath}/resources/css/common1.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-3.4.1.js"></script>
     <!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
  <script>
  

  </script>

</head>
<body>
	<div style="height: 50px;">
	<header >
	 	<%@ include file="/WEB-INF/views/header2.jsp" %> 
	</header>
	</div>
    <div class="subContainer">
        <div class="subscribeHeader">
          <ul>
            <li class="on" style="cursor: pointer;" onclick="location.href='#'">
              <h1>1</h1>
              <span>구독선택</span>
            </li>
            <li class="on" style="cursor: pointer;">
              <h1>2</h1>
              <span>결제내역</span>
            </li>
            <li>
              <h1>3</h1>
              <span>결제완료</span>
            </li>
          </ul>
        </div>
      
          <h1 class="text-field">결제 상세 내역을 확인해주세요.</h1>
          
        </div>
        <form id="subscribe-term" action="confirmSubscription.su" method="post">
        <input type="hidden" id="user_email" name="email" value="<%=user_email %>">
        <div class="choiceTerm">
          <div class="">
            <input type="radio" id="choiceTerm01" name="choiceTerm" value="s1MsalePrice" checked>
            <label for="choiceTerm01">
              <span class="Kinds">
               <% if(grade.equals("1month") || grade.equals("2month")) { %>체험판 <% }else{ %>정기결제<%} %></span>
              <span class="loop">첫 배달일은 mm월 dd일입니다.</span>
              <input type="hidden" name="SubPrice" value="<%=price%>">
              <div class="option">
                <span id="pwcomma">39,000원</span>
                <span> <% if(grade.equals("2month")) { %>/2개월 <% }else{ %>/1개월<%} %></span>
                <em>배송비무료</em>
              </div>
            </label>
       
          </div>
          <div class="subscribeNext">
            <button type="button" id="subscribe-btn">카카오페이 결제</button>
          </div>
          </form>
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
    
    <script>
   

	  $(document).ready(function() {
		  	/* 가격 콤마 추가 */
			var price = <%=price %>;
			var addComma = price.toLocaleString();
			$("#pwcomma").html(addComma);
		
	  });

    
  $("#subscribe-btn").on("click", function(){
	  	/*메일 아이디 추출 */
	    var beforeStr = $('#user_email').val();
		var afterStr = beforeStr.split('@');
	    var splitStr = afterStr[0];
		
	  	/* 빌링키 */
		var num = Math.floor(Math.random() * 10000) + 1;;
		var uid = splitStr+num;
		
		/* 회원 주소 */
		var address = '<%=membervo.getAddress() %>';
		address += ' <%=membervo.getAddress_detail() %>';

		
		
  var IMP = window.IMP; // 생략 가능
  IMP.init("imp40405865"); // 가맹점 식별코드

  IMP.request_pay({
	    pg : 'kakaopay', // 결제 방식
	    pay_method : 'card', //결제 수단
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    customer_uid: uid, // 카드(빌링키)와 1:1로 대응하는 값
	    name : '주문명:결제테스트', //order 테이블에 들어갈 주문명 혹은 주문번호
	    amount : <%=price%>, //결제 금액
	    buyer_email : $('#user_email').val(), //구매자 email
	    buyer_name : '<%=membervo.getName() %>', //구매자 이름
	    buyer_tel : '<%=membervo.getPhone() %>', //구매자 전화번호
	    buyer_addr : address, //구매자 주소
	    buyer_postcode : '<%=membervo.getPostal_num() %>' //구매자 우편번호
	  /*   m_redirect_url : '/khx/payEnd.action'	// 결제 완료 후 보낼 컨트롤러의 메소드명 */
	}, function(rsp) { //callback
	    if ( rsp.success ) { //빌링키 발급 성공
	    	//[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
	    	jQuery.ajax({
	            url: "/bit_project/insertSP.su", 
	            method: "POST",
	            data: {
	              customer_uid : uid// 카드(빌링키)
	            }
	   
		}).done(function (data) {
			if ( everythings_fine ) {
                msg = '결제가 완료되었습니다.';
                msg += '\n고유ID : ' + rsp.imp_uid;
                msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                msg += '\결제 금액 : ' + rsp.paid_amount;
                msg += '카드 승인번호 : ' + rsp.apply_num;
                
                alert(msg);
            } else {
                //[3] 아직 제대로 결제가 되지 않았습니다.
                //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
            }
	      });
	    	//성공시 이동할 페이지
            location.href='<%=request.getContextPath()%>/subscribestep3.me?msg='+msg;
	    } else {
	    	var msg = rsp.error_msg; //에러 메세지
	        alert(msg);
	    }
	  });
	  

});   
  </script>
    
</body>
</html>