<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/header2.css" rel="stylesheet" type="text/css" />
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

                    <div class="login_text"><a href="#">로그인</a></div>

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
                                            <td><button name="button" class="subscribe-btn" onclick="location.href='//'"
                                                    type="button">구독하기</button></td>
                                            <td ><a href="#a">커뮤니티</a></td>
                                            <td><a href="#a">상품보기</a></td>
                                            <td><a href="#a">QnA</a></td>
                                        </tr>
                                        <tr>
                                            <td><button name="button" class="subscribe-btn" onclick="location.href='//'"
                                                    type="button">회원가입</button></td>
                                            <td><a href="#a">이용방법</a></td>
                                            <td><a href="#a">어린이집</a></td>
                                            <td><a href="#a">파트너</a></td> 
                                        </tr>
                                    </tbody>
                                </table>
                                <table class="menu_m" >   
                                    <tbody>       
                                                               
                                     <tr><td><button name="button1" class="subscribe-btn" onclick="location.href='//'"
                                                    type="button" >구독하기</button></td></tr>
                                        <tr><td><button name="button1" class="subscribe-btn" onclick="location.href='//'"
                                                    type="button">회원가입</button></td></tr>
                                        <tr><td><a href="#a">이용방법</a></td></tr>
                                        <tr><td><a href="#a">어린이집</a></td></tr>
                                        <tr><td><a href="#a">파트너</a></td></tr> 
                                        <tr><td><a href="#a">커뮤니티</a></td></tr>
                                        <tr><td><a href="#a">상품보기</a></td></tr>
                                        <tr><td><a href="#a">QnA</a></td></tr>
                                   
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
</body>
</html>