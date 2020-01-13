<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/animate.css"> <!--wow-->
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/wow.min.js"></script><script> new WOW().init(); </script> <!--wow-->
<title>about</title>
</head>

<style>
@media (min-width: 601px){
    body {text-align: center;}
    .subcontainer{width: 1200px; height: 350px; background-color: rgb(166, 206, 72); margin: 0 auto 50px auto;}
    .intro-section{width: 1200px; margin: 0 auto; }
    span{display:block; line-height: 28px; font-size: 14px; width: 600px; margin: 0 auto; margin-top:25px;}
    .intro-section > span > em{font-style: normal; font-weight: 800;}
    h2 {font-size: 36px; margin-top: 20px;}
    h3 {font-size: 18px; margin-top: 30px;}
    hr {margin: 50px;}

    .mt_box{display: flex; width: 640px; margin: 0 auto;}
    .mt_box > .mt_box_module{width: 850px; display: flex;}
    .mt_box > .mt_box_module > .box_step1{background: #f9f0f0;}
    .mt_box > .mt_box_module > .box_step2{background: #fadcdc;}
    .mt_box > .mt_box_module > .box_step3{background: #f7b8b8;}
    .mt_box > .mt_box_module > .box_step4{background: #f89e9e;}
    .mt_box > .mt_box_module > div{width: 130px; height: 130px; border-radius: 50%; margin: 10px auto 10px auto;}

    .mt_6{background-color: rgb(199, 199, 199); height: 200px; display: flex; }
    .mt_6 > .mt_6_1{align-self: center; margin: auto;}
    .join_btn{background:#ffffff; color:#ff7276; border:#ff7276 solid 1px; width:150px; height:50px; font-size:18px; font-weight: normal; border-radius: 5px;}
    .sub_btn{background:#ff7276; color:#fff; border:0; width:150px; height:50px; font-size:18px; font-weight: normal; border-radius: 5px;}
}

@media (max-width: 600px){
    body {text-align: center;}
    span{display:block; line-height: 28px; font-size: 14px; width: 500px; margin: 0 auto; margin-top:25px;}
    .intro-section > span > em{font-style: normal; font-weight: 800;}
    h2 {font-size: 36px; margin-top: 20px;}
    h3 {font-size: 18px; margin-top: 30px;}
    hr {margin: 50px;}

    .subcontainer{width: 100%;background-color: #f7b8b8; height: 138px;}
    .mt_box > .mt_box_module{display: flex;}
    .mt_box > .mt_box_module > .box_step1{background: #f9f0f0;}
    .mt_box > .mt_box_module > .box_step2{background: #fadcdc;}
    .mt_box > .mt_box_module > .box_step3{background: #f7b8b8;}
    .mt_box > .mt_box_module > .box_step4{background: #f89e9e;}
    .mt_box > .mt_box_module > div{width: 130px; height: 130px; border-radius: 50%; margin: 10px auto 10px auto;}
    .mt_6{background-color: rgb(199, 199, 199); height: 200px; display: flex;}
    .mt_6 > .mt_6_1{align-self: center; margin: auto;}

    .join_btn{background:#ffffff; color:#ff7276; border:#ff7276 solid 1px; width:150px; height:40px; font-size:18px; font-weight: normal; border-radius: 5px;}
    .sub_btn{background:#ff7276; color:#fff; border:0; width:150px; height:40px; font-size:18px; font-weight: normal; border-radius: 5px;}
    
}
</style>

<body>
 <div class="subcontainer">
        about 사진
    </div>
    <div class="intro-section">
        <h2>안녕하세요, 진근이네입니다.</h2>
        <br>
        <img src="http://placehold.it/1200x150?text=logo" />
        <br>
        <h3>진근이네란?</h3>
        <span class="mt_1">
            <em>진근이네</em>는 0세부터 7세의 아이들을 대상으로 여러 장난감을 1달에 한 번씩 받아볼 수 있는 맞춤형 구독 서비스입니다.
            구독 신청 후, 배송된 장난감을 아이들이 재밌게 가지고 논 후에는 선택하신 위시리스트의 다른 장난감으로 교환 가능합니다.
            더는 선반 위에서 먼지만 쌓여가는 장난감을 사는 데 돈을 낭비하지 않으셔도 됩니다.
        </span>
        <h3>장난감 대여가 왜 합리적 경제 생활인가요?</h3>
        <span class="mt_1">
            우리 아이의 취향에 맞게 다양한 종류의 장난감을 대여되는 <em>진근이네</em>를 이용함으로써, 아이가 원하는 것을 충족시킬 수있습니다.
            또한, 더는 가지고 놀지 않는 장난감을 공유 또는 교환함으로써 부모님의 부담을 덜며 사회적 나눔을 실천할 수 있습니다.
            <br>
            <em>진근이네</em>는 공유 경제의 개념을 도입하여 자원의 낭비를 막으며, 친환경에 이바지합니다.
        </span>
        <h3>장난감 대여가 왜 합리적 경제 생활인가요?</h3>
        <span class="mt_1">
            우리 아이의 취향에 맞게 다양한 종류의 장난감을 대여되는 <em>진근이네</em>를 이용함으로써, 아이가 원하는 것을 충족시킬 수있습니다.
            또한, 더는 가지고 놀지 않는 장난감을 공유 또는 교환함으로써 부모님의 부담을 덜며 사회적 나눔을 실천할 수 있습니다.
            <br>
            <em>진근이네</em>는 공유 경제의 개념을 도입하여 자원의 낭비를 막으며, 친환경에 이바지합니다.
        </span>

        <hr>
        
        <h3>진근이네 이용방법</h3><br>
        <div class="mt_box">
            <div class="mt_box_module">
                <div class="box_step1 wow fadeInDown" data-wow-delay= "0.0001s">
                    <h4>STEP. 1</h4>회원가입
                </div>
                <div class="box_step2 wow fadeInDown" data-wow-delay= "0.005s">
                    <h4>STEP. 2</h4>구독 신청
                </div>
                <div class="box_step3 wow fadeInDown" data-wow-delay= "0.01s">
                    <h4>STEP. 3</h4>위시리스트
                </div>
                <div class="box_step3 wow fadeInDown" data-wow-delay= "0.1s">
                    <h4>STEP. 4</h4>배송 및 이용
                </div>
            </div>
        </div>
        <br>
        <span>1단계 - 간단히 회원 가입을 완료한 후<br>
        2단계 - 원하시는 구독 종류를 선택하시고<br>
        3단계 - 좋아하는 장난감, 원하시는 장난감을 골라 위시리스트에 추가합니다.<br>
        4단계 - 장난감이 문앞으로 배송되기를 기다리면 끝</span><br>
        <span style="font-size: 10px">**반납 일자가 다가오면 사전에 알려드리며, 택배기사님이 직접 방문합니다.
        반납 후에는 다음 장난감이 오기를 기다리면 됩니다.<br><br></span>

        <div class="mt_6">
            <div class="mt_6_1">
                <h3>진근이네는 연속되는 선물과 같습니다.<br><br></h3>
                <button type="button" name="join_btn" class="join_btn banner_btn1" onclick="location.href='#'">회원가입</button>
                <button type="button" name="sub_btn" class="sub_btn banner_btn2" onclick="location.href='#'">구독하기</button>
            </div> 
        </div>

        <br><br>
        <hr>
        <br><br>
        <div class="mt_2">
            <img src="http://placehold.it/640x150?text=sample" /><br>
            <span>2회 이상 파손 및 분실 시 서비스 이용에 제한될 수 있으니 이점 양해 부탁드립니다.</span>
        </div><br>
        <div class="mt_3">
                <img src="http://placehold.it/640x150?text=sample" /><br>
                <span>구독이 처음이신 분들을 위해 체험(1개월,2개월) 서비스를 추천해 드립니다.</span>
            </div><br>
        <div class="mt_4">
            <img src="http://placehold.it/640x150?text=sample" /><br>
            <span>아동 친화적인 살균 소독제를 이용하여 바이러스(Inf, HSV), 세균 등 99.9% 살균하고 있습니다.</span>
        </div><br>
        <div class="mt_5">
            <img src="http://placehold.it/640x150?text=sample" /><br>
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
                <button type="button" name="sub_btn" class="sub_btn banner_btn2" onclick="location.href='#'">구독하기</button>
            </div> 
        </div>
        
 <div id="footer">
		<%@ include file="/WEB-INF/views/footer.jsp" %>
</div>
</body>
</html>