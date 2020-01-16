<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 파일 업로드시 필요 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!-- 파일 업로드시 필요 -->
<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-3.4.1.js"></script>
<!-- 폰트어썸 아이콘 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<!-- 웹 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/resources/css/mypage.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/js/mypage.js"></script>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <title>마이페이지</title>
</head>
<body>

<header>
<div id="wrap">
        <div id="intro_bg">
            <div class="header">
                <div class="main">
                    <li><img src="${pageContext.request.contextPath}/resources/img/rumi.jpg"></li>
                </div>
                <ul class="nav">

                    <div class="login_text"><a href="login.me">로그인</a></div>

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
                                        </tr>
                                        <tr>
                                            <td><button name="button" class="subscribe-btn" onclick="location.href='//'"
                                                    type="button">회원가입</button></td>
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
    <div class="sample"></div>
    <!-- profile 시작 -->
    <div id="profile_wrap">   
        <div id="profile">
            <img src="${pageContext.request.contextPath}/resources/img/profile.png">
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
                <li><img src="${pageContext.request.contextPath}/resources/img/wishlist.png" class="btn1"></li>
                <li><img src="${pageContext.request.contextPath}/resources/img/reservation.png" class="btn2"></li>
                <li><img src="${pageContext.request.contextPath}/resources/img/bookmark.png" class="btn3"></li>
            </ul>
        </div>
        </div>
        <!-- profile 끝 -->

        <!-- myPage 메뉴 시작 -->
        <div id="list_nav_wrap">
            <div class="wrapper">
            <h3><a href="#" id="num0" class="oh">MY 페이지</a></h3>
                <ul class="main_list">
                    <li><a href="#" id="num1" class="oh"><b>구독정보</b></a></li>
                    <li><a href="#" id="num3" class="oh"><b>쉐어/정산</b></a></li>
                    <li>
                        <a href="#" class="member"><b class="oh">회원관리&nbsp;&nbsp;▼</b></a>
                        <ul class="sub_list1">
                            <li><a href="#" id="num2" class="oh">포인트</a></li>
                            <li><a href="#" id="num4" class="oh">정보수정</a></li>
                            <li><a href="#" id="num5" class="oh">회원탈퇴</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="activity"><b class="oh">나의활동&nbsp;&nbsp;▼</b></a>
                        <ul class="sub_list2">
                            <li><a href="#" class="oh">자유게시판</a></li>
                            <li><a href="#" class="oh">육아사진</a></li>
                            <li><a href="#" class="oh">정보공유(팁)</a></li>
                            <li><a href="#" class="oh">공구게시판</a></li>
                            <li><a href="#" class="oh">육아관련질문</a></li>
                            <li><a href="#" class="oh">이슈/토론</a></li>
                            <li><a href="#" class="oh">댓글</a></li>
                            <li><a href="#" class="oh">후기</a></li> 
                        </ul>
                    </li>
                </ul>
            </div> 
        </div>
    </div>
    <!-- myPage 메뉴 끝 -->

    <!-- main article 시작 -->
    <div id="right_article">
        <article id="article_main">
            
            <!-- 메인달력 시작 -->
            <div class="main_wrap">
                <h2>메인달력</h2>
            </div>
            <!-- 메인달력 끝 -->

            <!-- 구독정보 시작 -->
            <div class="subscribe_wrap">
                <h2>구독</h2>
                <div class="subscribe_block">
                    <div class="subscribe_content_1">
                        <b>미구독</b><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;정기구독을 이용해보세요</p>
                    </div>
                    <div class="subscribe_content_2">
                        <a href="#"><b>구독하기 ></b></a>
                    </div>
                </div>
                <div class="pay_block">
                    <h3>자동 결제 정보</h3>
                    <table>
                        <tr class="line">
                            <th>결제일</th>
                            <th>서비스등급</th>
                            <th>결제금액</th>
                            <th>결제상태</th>
                            <th>결제정보</th>
                        </tr>
                        <tr class="line">
                            <td>2020.01.01 ~ 2020.01.20</td>
                            <td>골드</td>
                            <td>59000원</td>
                            <td>결제완료</td>
                            <td>****-****-****-5252</td>
                        </tr>
                        <tr class="line">
                            <td>2020.01.01 ~ 2020.01.20</td>
                            <td>골드</td>
                            <td>59000원</td>
                            <td>결제완료</td>
                            <td>****-****-****-5252</td>
                        </tr>
                    </table>
                </div>
                <div class="product_history">
                    <h3>히스토리</h3>
                    <table>
                        <tr class="line">
                            <th colspan="1">대여기간</th>
                            <th colspan="2">상품명</th>
                            <th colspan="2">상태</th>
                        </tr>
                        <tr class="line">
                            <td colspan="1">2020.01.01 ~ 2020.01.20</td>
                            <td colspan="2">장난감1호</td>
                            <td colspan="2">대여중</td>                           
                        </tr>
                        <tr class="line">
                            <td colspan="1">2020.01.01 ~ 2020.01.20</td>
                            <td colspan="2">장난감2호</td>
                            <td colspan="2">반납완료</td>
                            
                        </tr>
                    </table>
                </div>
            </div>
            <!-- 구독정보 끝 -->

            <!-- 포인트 시작 -->
            <div class="point_wrap">
                <h2>포인트</h2>
                <div class="point_block">
                    <div class="point_content_1">
                        <b>보유 포인트</b>
                    </div>
                    <div class="point_content_2">
                        <h3>2000</h3><p>&nbsp;&nbsp;P</p>
                    </div>
                </div>
                <div class="point_history">
                    <h3>포인트 내역</h3>
                    <table>
                        <tr class="line2">
                            <th>변동일</th>
                            <th>내용</th>
                            <th>포인트</th>
                        </tr>
                        <tr class="line2">
                            <td>2020.01.01</td>
                            <td>후기작성</td>
                            <td>+500 Point</td>
                        </tr>
                        <tr class="line2">
                            <td>2020.01.01</td>
                            <td>구독료 차감</td>
                            <td>-1,000 Point</td>
                        </tr>
                    </table>
                </div>
                <div class="point_use">
                    <h3>포인트 사용</h3><p>&nbsp;&nbsp;&nbsp;&nbsp;(다음결제 또는 배송시 적용됩니다.)</p>
                    <form id="point_form" name="point_form" method="POST" action="#">
                    <table>
                        <tr class="use_line">
                            <th><input type="radio" name="check" value="차감" class="point_radio">&nbsp;&nbsp;&nbsp;구독료 차감</th>
                        </tr>
                        <tr class="use_line">
                            <th><input type="radio" name="check" value="포장" class="point_radio">&nbsp;&nbsp;&nbsp;포장</th>
                        </tr> 
                        <tr class="use_line">
                            <td><input type="text" class="point_text"></td>
                        </tr>   
                        <tr class="use_line">
                            <td><input type="button" value="사용하기" class="point_button"></td>
                        </tr>    
                    </table>
                    </form>
                </div>
            </div>
            <!-- 포인트 끝 -->
            
            <!-- 위시리스트 시작 -->
            <div class="list">
                <div class="list_menu">
                    <table>
                        <tr class="menu_line">
                            <th class="profile_menu1"><b class="oh">위시리스트</b></th>
                            <th class="profile_menu2"><b class="oh">예약</b></th>
                            <th class="profile_menu3"><b class="oh">찜</b></th>
                        </tr>
                    </table>
                    <p>n개의 상품이 있습니다.</p>
                </div>
                <div class="menu_product">
                    <table>
                        <tr class="product_line"> 
                            <td>
                                <div class="product">
                                <img src="${pageContext.request.contextPath}/resources/img/rumi.jpg"><h3>장난감1</h3>
                                </div>
                                <div class="product">
                                <img src="${pageContext.request.contextPath}/resources/img/rumi.jpg"><h3>장난감2</h3>
                                </div>
                                <div class="product">
                                <img src="${pageContext.request.contextPath}/resources/img/rumi.jpg"><h3>장난감1</h3>
                                </div>
                                <div class="product">
                                <img src="${pageContext.request.contextPath}/resources/img/rumi.jpg"><h3>장난감1</h3>
                                </div>
                                <div class="product">
                                <img src="${pageContext.request.contextPath}/resources/img/rumi.jpg"><h3>장난감1</h3>
                                </div>
                                <div class="product">
                                <img src="${pageContext.request.contextPath}/resources/img/rumi.jpg"><h3>장난감1</h3>
                                </div>
                                <div class="product">
                                <img src="${pageContext.request.contextPath}/resources/img/rumi.jpg"><h3>장난감1</h3>
                                </div>
                                 <div class="product">
                                <img src="${pageContext.request.contextPath}/resources/img/rumi.jpg"><h3>장난감1</h3>
                                </div>
                            </td>
                    </table>
                </div>
            </div>
            <!-- 위시리스트 끝 -->

            <!-- 쉐어/정산 시작 -->
           <div class="share">
            <h2>쉐어</h2>
            <div class="account">
                <div class="account_title">
                    <h3>계좌번호</h3>
                </div>
                <div class="account_detail">
                    <p>우리은행 1002 - 043 - 884651&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;조성현</p>
                </div>
            </div>
            <div class="application">
                <h3>신청 내역</h3>
                <table>
                    <tr class="application_line">
                        <th>신청일</th>
                        <th>상품명</th>
                        <th>상태</th>
                    </tr>
                    <tr class="application_line">
                        <td>2020.01.01</td>
                        <td>상품명1</td>
                        <td>쉐어 불가</td>
                    </tr>
                    <tr class="application_line">
                        <td>2020.01.01</td>
                        <td>장난감2</td>
                        <td>쉐어 가능</td>
                    </tr>
                </table>
            </div>
            <div class="share_history">
                <h3>쉐어 내역</h3><input type="button" value="정산">
                <table>
                    <tr class="share_line">
                        <th>쉐어기간</th>
                        <th>상품명</th>
                        <th>등급</th>
                        <th>수익</th>
                        <th>상태</th>
                    </tr>
                    <tr class="share_line">
                        <td>2020.01.01 ~ 2020.01.20</td>
                        <td>장난감1호</td>
                        <td>골드</td>
                        <td>2,000</td>
                        <td>대여중</td>                           
                    </tr>
                    <tr class="share_line">
                        <td>2020.01.01 ~ 2020.01.20</td>
                        <td>장난감2호</td>
                        <td>플래티넘</td>
                        <td>2,000</td>
                        <td>대기중</td> 
                    </tr>
                </table>
            </div>
        </div>
        <!-- 쉐어/정산 끝 -->

        <!-- 회원탈퇴 시작 -->
        <div class="member_bye">
            <h2>회원탈퇴</h2>
            <form id="pass_confirm_form" name="pass_confirm_form" method="POST" action="#">
            <div class="pass_confirm">
                <table>
                    <tr class="pass_line">
                        <th>비밀번호</th>
                        <th><input type="password" class="password1" placeholder="비밀번호 입력"></th>
                    </tr>
                    <tr class="pass_line">
                        <th>비밀번호 확인</th>
                        <th><input type="password" class="password2" placeholder="비밀번호 확인"></th>            
                    </tr>
                </table>
            </div>
            <div class="content">
                <p>- 포인트, 적립금, 회원등급 등의 정보는 모두 삭제됩니다.</p><br>
                <p>- 게시판의 게시글, 댓글 등의 정보는 삭제되지 않습니다.</p><br>
                <p>&nbsp;&nbsp;&nbsp;(탈퇴 전 직접 삭제)</p>
            <div class="content_block"></div>
            </div>
            <div class="content_confirm">
                <input type="radio" name="confirm"><h5>안내사항을 모두 확인하였으며, 이에 동의합니다.</h5><br>
                <input type="button" value="회원탈퇴" class="member_button" onclick="location.href='member_confirm.html'">
            </div>
            </form>
        </div>
        <!-- 회원탈퇴 끝 -->

        <!-- 회원정보 수정 시작 -->
        <div class="member_update">
            <div class="member_img">
                 <h1>회원수정</h1>
                 <img src="${pageContext.request.contextPath}/resources/img/profile.png" width=100px height=100px>  
            </div>
            <div class="update_form_wrap">
                 <form id="update_form" name="update_form" action="#" enctype="multipart/form-data" method="POST">
                     <table class="update_table" cellspacing="8px">
                         <tr>
                             <td><p>회원명</p></td>
                             <td><b class="na">#EA7475</b></td>
                         </tr>
                         <tr>
                             <td><p>이메일</p></td>
                             <td><b class="na">wlsrms9300@naver.com</b></td>
                         </tr>
                         <tr>
                            <td><p>닉네임</p></td> 
                            <td><input type="text" class="nickname" placeholder="내용을 입력해주세요"></td>
                            <td><input type="button" value="중복확인" class="button1"></td>
                         </tr>
                         <tr>
                             <td><p>비밀번호</p></td> 
                             <td><input type="password" class="password" placeholder="내용을 입력해주세요"></td>
                             <td><input type="button" value="변경하기" class="button2"></td>
                         </tr>
                         <tr>
                             <td><p>새 비밀번호</p></td> 
                             <td><input type="password" class="new_password" placeholder="새 비밀번호"></td>
                          </tr>
                          <tr>
                              <td></td>
                              <td><input type="password" class="new_password_confirm" placeholder="새 비밀번호 확인"></td>
                          </tr>
                          <tr>
                             <td><p>주소</p></td>    
                             <td><input type="text" class="postal_num" placeholder="우편번호"></td>
                             <td><input type="button" class="button4" value="검색"></td>
                          </tr>
                          <tr>
                             <td></td>
                             <td><input type="text" class="address" placeholder="주소"></td>
                         </tr>
                          <tr>
                              <td></td>
                              <td><input type="text" class="address_detail" placeholder="상세주소"></td>
                          </tr>
                          <tr>
                              <td><p>인스타그램</p></td>
                              <td><input type="text" class="instagram_id"></td>
                          </tr>
                          <tr>
                              <td><b class="add">추가정보</b></td>
                          </tr>
                          <tr>
                              <td><p>자녀의 이름</p></td>
                              <td><input type="text" class="children_name"></td>
                         </tr>
                         <tr>
                             <td><p>자녀 생년월일</p></td>
                             <td><input type="text" class="children_birth"></td>
                         </tr>
                         <tr>
                             <td></td>
                             <td><input type="button" value="회원정보 수정" class="button3"></td>
                         </tr>   
                     </table>
                 </form>
            </div>
        </div>
     <!-- 회원정보 수정 끝 -->

        </article>
    </div>
    </div>
    <!-- main article 끝 -->

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