<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.spring.login.LoginVO" %>
<%
	LoginVO userDetail_subs = (LoginVO)session.getAttribute("userDetail");
%>
<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-3.4.1.js"></script>
<!-- 폰트어썸 아이콘 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<!-- 웹 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/resources/css/mypage/subscribe.css" rel="stylesheet">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="subscribe_wrap">
                <h2>구독</h2>
                
                <div class="subscribe_block">
                  <% if(userDetail_subs.getSubscribe().equals("N")) { %>
                    <div class="subscribe_content_1">
                        <b>미구독</b><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;정기구독을 이용해보세요</p>
                    </div>
                    <div class="subscribe_content_2">
                        <a href="subscribestep1.me"><b>구독하기 ></b></a>
                    </div>
                  <% } else { %>               
                    <div class="subscribe_content_1">
                        <b>구독중</b><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;서비스를 이용중입니다</p>
                    </div>
                    <div class="subscribe_content_2">
                        <a href="#"><b>구독취소 ></b></a>
                    </div>
                  <% } %>
                </div>
                <div class="pay_block">
                    <h3>자동 결제 정보</h3>
                    <table>
                        <tr class="line">
                            <th>결제일</th>
                            <th>등급</th>
                            <th>금액</th>
                            <th>상태</th>
                            <th>계좌</th>
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
                            <th colspan="1">기간</th>
                            <th colspan="2">상품명</th>
                            <th colspan="2">상태</th>
                        </tr>
                        <tr class="line">
                            <td colspan="1">2020.01.01 ~ 2020.01.20</td>
                            <td colspan="2">장난감</td>
                            <td colspan="2">대여</td>                           
                        </tr>
                        <tr class="line">
                            <td colspan="1">2020.01.01 ~ 2020.01.20</td>
                            <td colspan="2">장난감</td>
                            <td colspan="2">반납</td>
                            
                        </tr>
                    </table>
                </div>
           
            </div>
</body>
</html>