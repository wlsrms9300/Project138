<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import ="java.util.ArrayList" %>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*, com.spring.community.*" %>
<%@ page import="java.util.*, com.spring.login.*" %>
<%
	SimpleDateFormat sdf = new SimpleDateFormat("yy/MM/dd HH:mm");
	LoginVO vo = (LoginVO)request.getAttribute("vo");
	String category = (String)request.getAttribute("category");

	String email_co = (String)session.getAttribute("email");
%>	
	

<html>
<head>
<title>community</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"  content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<link href="${pageContext.request.contextPath}/resources/css/community.css" rel="stylesheet" type="text/css" /> <!-- css -->
<script src="https://kit.fontawesome.com/fa509a9993.js" crossorigin="anonymous"></script> <!--icon--> 
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/dropdown.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modernizr-custom.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/community.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/community_menu.js"></script>

</head>
<body>

<div style="height: 60px;">
<header >
 	<%@ include file="/WEB-INF/views/header1.jsp" %> 
</header>
</div>

    <div id="community_container_menubar">
        <!-- <div class="community_menubar"><!--전 내용 숨기기
            <a class="community_menubar_item" href="#" value="자유게시판">자유게시판</a>
            <a class="community_menubar_item" href="#" value="육아사진">육아사진</a>
            <a class="community_menubar_item" href="#" value="정보공유">정보공유(팁)</a>
            <a class="community_menubar_item" href="#" value="공구게시판">공구게시판</a>
            <a class="community_menubar_item" href="#" value="육아게시판">육아게시판</a>
            <a class="community_menubar_item" href="#" value="이슈게시판">이슈,토론게시판</a>
        </div> -->
        <ul class="community_menubar">
        	<li data-tab="자유게시판" class="community_menubar_item" ><a href="#">자유게시판</a></li>
        	<li data-tab="육아사진" class="community_menubar_item"><a href="#">육아사진게시판</a></li>
        	<li data-tab="정보공유" class="community_menubar_item"><a href="#">정보공유(팁)</a></li>
        	<li data-tab="공구게시판" class="community_menubar_item"><a href="#">공구게시판</a></li>
        	<li data-tab="육아게시판" class="community_menubar_item"><a href="#">육아게시판</a></li>
        	<li data-tab="이슈게시판" class="community_menubar_item"><a href="#">이슈,토론게시판</a></li>
        </ul>
    </div>
    
<!-- 게시판 내용 시작 -->
<div id="community_main">
    <div id="community_container_header">
        <div class="community_title"><p class="zz"><%=category %></p></div>
    </div>
    
    <!-- filter + dropdown -->
	<div id="community_container_filter">
	
	<!-- dropdown -->
     <div class="community_filter">
		<select id="wrapper-dropdown" class="wrapper-dropdown" onchange="button_click()">
			<option value="최신순">최신순</option>
			<option value="조회순">조회순</option>
			<option value="댓글순">댓글순</option>
		</select>
   	</div>
   	
   	<!-- 글쓰기 버튼 -->
   	<input type="button" onclick="write_btn()" id="community_write" value="글쓰기">
   	
		<!-- filter -->
	    <div class="community_search">
	        <div class="wrap">
	            <!-- <form action="" autocomplete="on" method="post"> -->
	            <input id="search_form" name="search_form" type="text">
	            <i class="fas fa-search">
	            		<input id="search_submit"  type="submit" name="search_submit"></i> <!-- icon -->
	            <!-- </form> -->
	        </div>
	    </div>
	    
   	
	</div>
	
	<!-- 검색 결과 -->
	 <div class="community_search_result"><p class="gg"></p></div>
	 
	<!-- 게시글 리스트 -->
    <div id="community_data"></div>
    
    <div class="underline"></div>
    
    
	<!-- 페이징 -->
    <div class="paginate" style="text-align:center;"></div>
    
</div> <!-- 게시판 내용 끝 -->

<footer>
	 <%@ include file="/WEB-INF/views/footer.jsp" %> 
</footer>

</body>
</html>