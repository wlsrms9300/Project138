<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<meta name="viewport"
        content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<link rel="stylesheet" href="<c:url value="/resources/css/contactus.css" />">
</head>
<body>
	<div id="contact-us-wrapper">
        <div id="logo">
            <h1>Contact Us</h1>
        </div>
        <br>
        <br>
        <div id="contact-us-form">
            <form action="" method="POST">
                <table>
                    <tr>
                        <td class="field-text2">상호명</td>
                    </tr>
                    <tr>
                        <td><input class="field-text" type="text" name="partner-name" value="  내용을 입력해주세요." onclick=this.value=""></td>
                    </tr>
                    <tr>
                        <td class="field-text2">담당자 성함</td>
                    </tr>
                    <tr>
                        <td><input class="field-text" type="text" name="partner-owner" value="  내용을 입력해주세요." onclick=this.value=""></td>
                    </tr>
                    <tr>
                        <td class="field-text2">담당자 연락처</td>
                    </tr>
                    <tr>
                        <td><input class="field-text" type="text" name="partner-phone" value="  내용을 입력해주세요." onclick=this.value=""></td>
                    </tr>
                    <tr>
                        <td class="field-text2">소개글</td>
                    </tr>
                    <tr>
                        <td><textarea class="text-area" rows="5" cols="20"></textarea></td>
                    </tr>
                    <tr><td>&nbsp;</td></tr>
        			<tr><td><div class="span">
					<button class="btn">제출</button></td></tr>
				</div>
                </table>
			</form>
        </div>

        <hr>
        <div id="map-wrapper">
            <div id="map"></div>
            <script type="text/javascript"
                src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bbb3254cd74d562e441c933eb6805411"></script>
            <script>
                var container = document.getElementById('map');
                var options = {
                    center: new kakao.maps.LatLng(37.527439, 127.0512505),
                    level: 3
                };

                var map = new kakao.maps.Map(container, options);
                function setCenter(lat, lng){
                    map.setCenter(new kakao.maps.LatLng(lat, lng));
                }
            </script>
            <div id="information">
                <table>
                    <tr>
                        <td><img src="./resources/images/icon1.PNG"></td>
                        <td><b>주소</b></td>
                        <td>서울시 강남구 도산대로 89길 49</td>
                    </tr>
                    <tr>
                        <td><img src="./resources/images/icon2.PNG"></td>
                        <td><b>TEL</b></td>
                        <td>010-3565-5410</td>
                    </tr>
                    <tr>
                        <td><img src="./resources/images/icon3.PNG"></td>
                        <td><b>FAX</b></td>
                        <td>010-3565-5410</td>
                    </tr>
                    <tr>
                        <td><img src="./resources/images/icon4.PNG"></td>
                        <td><b>E.mail</b></td>
                        <td>tazo0519@naver.com</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</body>
</html>