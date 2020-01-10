<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-3.4.1.js"></script>
<!-- 폰트어썸 아이콘 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<!-- 웹 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/resources/css/mypage/share.css" rel="stylesheet">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
</body>
</html>