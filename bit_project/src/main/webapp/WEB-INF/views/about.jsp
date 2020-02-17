<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.spring.login.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"  content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<link href="${pageContext.request.contextPath}/resources/css/about.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aos.css">
<title>about</title>
</head>
<body>

<div style="height: 60px;">
<header >
 	<%@ include file="/WEB-INF/views/header1.jsp" %> 
</header>
</div>

 <div class="subcontainer">
        <div style="height: 350px; overflow: hidden"><img src="${pageContext.request.contextPath}/resources/img/about1.jpg" style="height: 100%; width: 100%;" ></div>
    </div>
    <div class="intro-section">
        <h2 class="h2_style">안녕하세요, 진근이네입니다.</h2>
        <br>
<!--         <img src="http://placehold.it/1200x150?text=logo" /> -->
		<%-- <img src="${pageContext.request.contextPath}/resources/img/partner01.jpg"> --%>
		<img>
        <br>
        <h3>진근이네란?</h3>
        <span class="mt_1 span_style">
            <em>진근이네</em>는 0세부터 7세의 아이들을 대상으로 여러 장난감을 1달에 한 번씩 받아볼 수 있는 맞춤형 구독 서비스입니다.
            구독 신청 후, 배송된 장난감을 아이들이 재밌게 가지고 논 후에는 선택하신 위시리스트의 다른 장난감으로 교환 가능합니다.
            더는 선반 위에서 먼지만 쌓여가는 장난감을 사는 데 돈을 낭비하지 않으셔도 됩니다.
        </span>
        <h3>장난감 대여가 왜 합리적 경제 생활인가요?</h3>
        <span class="mt_1 span_style">
            우리 아이의 취향에 맞게 다양한 종류의 장난감을 대여되는 <em>진근이네</em>를 이용함으로써, 아이가 원하는 것을 충족시킬 수있습니다.
            또한, 더는 가지고 놀지 않는 장난감을 공유 또는 교환함으로써 부모님의 부담을 덜며 사회적 나눔을 실천할 수 있습니다.
            <br>
            <em>진근이네</em>는 공유 경제의 개념을 도입하여 자원의 낭비를 막으며, 친환경에 이바지합니다.
        </span>
        <h3>장난감 대여가 왜 합리적 경제 생활인가요?</h3>
        <span class="mt_1 span_style">
            우리 아이의 취향에 맞게 다양한 종류의 장난감을 대여되는 <em>진근이네</em>를 이용함으로써, 아이가 원하는 것을 충족시킬 수있습니다.
            또한, 더는 가지고 놀지 않는 장난감을 공유 또는 교환함으로써 부모님의 부담을 덜며 사회적 나눔을 실천할 수 있습니다.
            <br>
            <em>진근이네</em>는 공유 경제의 개념을 도입하여 자원의 낭비를 막으며, 친환경에 이바지합니다.
        </span>

        <hr>
        
        <h3>진근이네 이용방법</h3><br>
        <div class="mt_box">
            <div class="mt_box_module">
                <div class="box_step1" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">
                    <h4>STEP. 1</h4>회원가입
                </div>
                <div class="box_step2" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="300">
                    <h4>STEP. 2</h4>구독 신청
                </div>
                <div class="box_step3" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="400">
                    <h4>STEP. 3</h4>위시리스트
                </div>
                <div class="box_step4" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="500">
                    <h4>STEP. 4</h4>배송 및 이용
                </div>
            </div>
        </div>
        <br>
        <span class="span_style">1단계 - 간단히 회원 가입을 완료한 후<br>
        2단계 - 원하시는 구독 종류를 선택하시고<br>
        3단계 - 좋아하거나 원하는 장난감을 골라 위시리스트에 추가합니다.<br>
        4단계 - 장난감이 문앞으로 배송되기를 기다리면 끝</span><br>
        <span style="font-size: 10px">**반납 일자가 다가오면 사전에 알려드리며, 택배기사님이 직접 방문합니다.<br>
        반납 후에는 다음 장난감이 오기를 기다리면 됩니다.<br><br></span>

        <div class="mt_6">
            <div class="mt_6_1">
                <h3>진근이네는 연속되는 선물과 같습니다.<br><br></h3>
                <button type="button" name="join_btn" class="join_btn banner_btn1" onclick="loginChk()">회원가입</button>
                <button type="button" name="sub_btn" class="sub_btn banner_btn2" onclick="location.href='subscribestep1.me'">구독하기</button>
            </div> 
        </div>
    </div>
    <div class="intro-section1">
        <br><br>
        <hr>
        <br><br>
        <div class="mt_2 img2 span_style">
            <%-- <img src="${pageContext.request.contextPath}/resources/img/partner01.jpg"> --%>
            <img src="${pageContext.request.contextPath}/resources/img/about2.jpg"><br>
            <span>2회 이상 파손 및 분실 시 서비스 이용에 제한될 수 있으니 이점 양해 부탁드립니다.</span>
        </div><br>
        <div class="mt_3 img2 span_style">
                 <img src="${pageContext.request.contextPath}/resources/img/about2.jpg"><br>
                <span>구독이 처음이신 분들을 위해 체험(1개월,2개월) 서비스를 추천해 드립니다.</span>
            </div><br>
        <div class="mt_4 img2 span_style">
             <img src="${pageContext.request.contextPath}/resources/img/about2.jpg"><br>
            <span>아동 친화적인 살균 소독제를 이용하여 바이러스(Inf, HSV), 세균 등 99.9% 살균하고 있습니다.</span>
        </div><br>
        <div class="mt_5 img2 span_style">
             <img src="${pageContext.request.contextPath}/resources/img/about2.jpg"><br>
            <span>개인 SNS(인스타그램)에 리뷰를 작성해주시면 500point 지급해드립니다.<br>
                포인트는 구독료 차감 가능하며 특별한 날에 오래 기억될 선물 포장 서비스에도 사용 가능합니다.</span>
        </div><br>

        <br><br>
        <hr>
        <br><br>
	</div>

        <div class="mt_6">
            <div class="mt_6_1">
                <h3>장난감 정기구독서비스로<br>
                설레임과 기쁨이 있는 시간을 가져보세요<br><br></h3>
                <button type="button" name="sub_btn" class="sub_btn banner_btn2" onclick="location.href='subscribestep1.me'">구독하기</button>
            </div> 
        </div>
        
<footer>
	<%@ include file="/WEB-INF/views/footer.jsp" %> 
</footer>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
<script>
AOS.init();
</script>
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

</body>
</html>