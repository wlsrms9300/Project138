<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-3.4.1.js"></script>
<!-- 폰트어썸 아이콘 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<!-- 웹 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/resources/css/mypage/list.css" rel="stylesheet">

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
                           </tr>
                    </table>
                </div> 
            </div>
</body>
</html>