<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 파일 업로드시 필요 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!-- 파일 업로드시 필요 -->
<%

	String email = (String)session.getAttribute("email");
	String img = (String)session.getAttribute("img");
	
	if((String)session.getAttribute("email") == null) {
		out.println("<script>");
		out.println("location.href='login.me'");
		out.println("</script>");
	}
	
%>
<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-3.4.1.js"></script>
<!-- 폰트어썸 아이콘 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<!-- 웹 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/resources/css/mypage/mypage.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <title>마이페이지</title>
</head>
<body>

<script>
	var email = '<%=email%>';
	
	function date_format(format) {
		var year = format.getFullYear();
	    var month = format.getMonth() + 1;
	    if(month<10) {
	    	month = '0' + month;
	    }
	    var date = format.getDate();
	    if(date<10) {
	    	date = '0' + date;
	    }
	    var hour = format.getHours();
	    if(hour<10) {
	    	hour = '0' + hour;
	    }
	    var min = format.getMinutes();
	    if(min<10) {
	    	min = '0' + min;
	    }

		return year + "-" + month + "-" + date + " " + hour + ":" + min;
	}
</script>

<header>
<div id="wrap">
        <div id="intro_bg">
            <div class="header">
                <div class="main">
                    <li><img src="${pageContext.request.contextPath}/resources/img/logo12.jpg"></li>
                </div>
                <ul class="nav">
					<%
						if(email != null) {
					%>
						<div class="logout_text" style="margin:auto 20px auto 0;" onclick="location.href='logout.me'">
							<p style="cursor:pointer; font-size:16px;">로그아웃</p>
						</div>					
						<div class="header_img" style="margin-top:6.5px; margin-right:5px;">
							<img src="<%=img %>" id="rumi" onclick="location.href='mypage_main.my'" style="border-radius:50px; width:47px; height:47px; border:2px solid #EA7475; margin:0; cursor:pointer;">
						</div>
						
					
					<%
						} else {
					%>
                    <div class="login_text"><a href="login.me">로그인</a></div>
                    <%
						}
                    %>

                    <li><input type="checkbox" id="menuicon">
                        <label for="menuicon">
                            <span></span>
                            <span></span>
                            <span></span>
                        </label>

                        <div class="sidebar">
                            <div id="sidemenu">
                                <table class="menu_w">
                                    <tbody>
                                        <tr>  
                                            <td><button name="button" class="subscribe-btn" onclick="location.href='subscribestep1.me'"
                                                    type="button">구독하기</button></td>
                                            <td ><a href="community.co">커뮤니티</a></td>
                                            <td><a href="product.pr">상품보기</a></td>
                                            <td><a href="qna.se">QnA</a></td>
                                            <td><a href="contactus.ms">Contact Us</a></td>
                                        </tr>
                                        <tr>
                                            <td><button name="button" class="subscribe-btn" onclick="location.href='signup.me'"
                                                    type="button">회원가입</button></td>
                                            <td></td>       
                                            <td><a href="about.ma">이용방법</a></td>
                                            <td><a href="kindergarten.ms">어린이집</a></td>
                                            <td><a href="partner.ms">파트너</a></td> 
                                        </tr>
                                    </tbody>
                                </table>
                                <table class="menu_m" >   
                                    <tbody>       
                                                               
                                     <tr><td><button name="button1" class="subscribe-btn" onclick="location.href='subscribestep1.me'"
                                                    type="button" >구독하기</button></td></tr>
                                        <tr><td><button name="button1" class="subscribe-btn" onclick="location.href='signup.me'"
                                                    type="button">회원가입</button></td></tr>
                                        <tr><td><a href="about.ma">이용방법</a></td></tr>
                                        <tr><td><a href="kindergarten.ms">어린이집</a></td></tr>
                                        <tr><td><a href="partner.ms">파트너</a></td></tr> 
                                        <tr><td><a href="community.co">커뮤니티</a></td></tr>
                                        <tr><td><a href="product.pr">상품보기</a></td></tr>
                                        <tr><td><a href="qna.se">QnA</a></td></tr>
                                        <tr><td><a href="contactus.ms">Contact Us</a></td></tr>
                                
                                    </tbody>
                                </table>                       
                            </div>
                        </div>
                        
                    </li>

                </ul>
            </div>
        </div>
    </div>
</header>




<div id="mypage">
   
    <!-- profile 시작 -->
    <div id="profile_wrap">   
        <div id="profile">
            <img src="<%=img %>">
        </div>
        <div id="detail_wrap">
        <div id="name">
            <h2>#EA7475</h2>
        </div>
        <div id="profile_detail">
            <a href="instagram.com/instagram_id">instagram_id</a><br>
            <p>회원등급 : </p><h4>일반회원</h4><br>
            <p>포인트 : </p><h4>2000P</h4>
            <ul class="sub_list3">
                <li><img src="${pageContext.request.contextPath}/resources/img/wishlist.png" class="btn1" onclick="wish_click()"></li>
                <li><img src="${pageContext.request.contextPath}/resources/img/reservation.png" class="btn2" onclick="reser_click()"></li>
                <li><img src="${pageContext.request.contextPath}/resources/img/bookmark.png" class="btn3" onclick="book_click()"></li>
            </ul>
        </div>
        </div>
        <!-- profile 끝 -->

        <!-- myPage 메뉴 시작 -->
        <div id="list_nav_wrap">
            <div class="wrapper">
            <h3><a href="#1" id="num0" class="oh">MY 페이지</a></h3>
                <ul class="main_list">
                    <li><a href="#2" id="num1" class="oh"><b>구독정보</b></a></li>
                    <li><a href="#3" id="num3" class="oh"><b>쉐어/정산</b></a></li>
                    <li>
                        <a href="#4" class="member"><b class="oh">회원관리&nbsp;&nbsp;</b><b class="o1">▼</b></a>
                        <ul class="sub_list1">
                            <li><a href="#5" id="num2" class="oh"><b>포인트</b></a></li>
                            <li><a href="#6" id="num4" class="oh"><b>정보수정</b></a></li>
                            <li><a href="#7" id="num5" class="oh"><b>회원탈퇴</b></a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#8" class="activity"><b class="oh">나의활동&nbsp;&nbsp;</b><b class="o2">▼</b></a>
                        <ul class="sub_list2">
                            <li><a href="#9" id="m1" class="oh"><b>자유게시판</b></a></li>
                            <li><a href="#10" id="m2" class="oh"><b>육아사진</b></a></li>
                            <li><a href="#11" id="m3" class="oh"><b>정보공유(팁)</b></a></li>
                            <li><a href="#12" id="m4" class="oh"><b>공구게시판</b></a></li>
                            <li><a href="#13" id="m5" class="oh"><b>육아관련질문</b></a></li>
                            <li><a href="#14" id="m6" class="oh"><b>이슈/토론</b></a></li>
                            <li><a href="#15" id="m7" class="oh"><b>댓글</b></a></li>
                            <li><a href="#16" id="m8" class="oh"><b>후기</b></a></li> 
                        </ul>
                    </li>
                </ul>
                <div id="sub_list11">
       		 				<div class="sub_list11_bar">
            					<a class="sub_list11_menu" id="num22" href="#"><b>포인트</b></a>
            					<a class="sub_list11_menu" id="num44" href="#"><b>정보수정</b></a>
            					<a class="sub_list11_menu" id="num55" href="#"><b>회원탈퇴</b></a>
        					</div>
    					</div>
    			<div id="sub_list22">
       						 <div class="sub_list22_bar">
            					<a class="sub_list22_menu" id="m11" href="#"><b>자유게시판</b></a>
           						<a class="sub_list22_menu" id="m12"><b>육아사진</b></a>
            					<a class="sub_list22_menu" id="m13"><b>정보공유(팁)</b></a>
            					<a class="sub_list22_menu" id="m14"><b>공구게시판</b></a>
            					<a class="sub_list22_menu" id="m15"><b>육아게시판</b></a>
            					<a class="sub_list22_menu" id="m16"><b>이슈,토론</b></a>
            					<a class="sub_list22_menu" id="m17"><b>댓글</b></a>
            					<a class="sub_list22_menu" id="m18"><b>후기</b></a>
        					</div>
    					</div>
            </div> 
        </div>
    </div>
    <!-- myPage 메뉴 끝 -->

    <!-- main article 시작 -->
    <div id="right_article">
        <article id="article_main">
       	 	<%@ include file="/WEB-INF/views/mypage/mypage_calendar.jsp" %>
            <%@ include file="/WEB-INF/views/mypage/mypage_bye.jsp" %>
            <%@ include file="/WEB-INF/views/mypage/mypage_list.jsp" %>
            <%@ include file="/WEB-INF/views/mypage/mypage_point.jsp" %>
            <%@ include file="/WEB-INF/views/mypage/mypage_share.jsp" %>
            <%@ include file="/WEB-INF/views/mypage/mypage_subscribe.jsp"%>
            <%@ include file="/WEB-INF/views/mypage/mypage_update.jsp"%>
            <%@ include file="/WEB-INF/views/mypage/mypage_board.jsp"%>           
        </article>
    </div>
    <!-- main article 끝 -->
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
                                    111-11-1111</span> 통신판매업신고번호 제 111호</p><br>
                            <p>Copyright 2020 by Bit Inc. All right reserved</p>
                        </address>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer 끝 -->
<script>
var myemail = "<%=email%>";
</script>
<script src="${pageContext.request.contextPath}/resources/js/mypage/mypage.js"></script>
</body>
</html>