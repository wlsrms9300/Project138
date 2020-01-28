<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import ="java.util.ArrayList" %>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*, com.spring.community.*" %>

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
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/dropdown.js"></script> <!-- dropdown --> --%>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/community.js"></script>
</head>
<body>

<div style="height: 60px;">
<header >
 	<%@ include file="/WEB-INF/views/header1.jsp" %> 
</header>
</div>

    <div id="community_container_menubar">
        <div class="community_menubar">
            <a class="community_menubar_item" href="#" value="자유게시판">자유게시판</a>
            <a class="community_menubar_item" href="#" value="육아사진">육아사진</a>
            <a class="community_menubar_item" href="#" value="정보공유">정보공유(팁)</a>
            <a class="community_menubar_item" href="#" value="공구게시판">공구게시판</a>
            <a class="community_menubar_item" href="#" value="육아게시판">육아게시판</a>
            <a class="community_menubar_item" href="#" value="토론게시판">이슈,토론게시판</a>
        </div>
    </div>
    
<!-- 게시판 내용 시작 -->
<div id="community_main">
    <div id="community_container_header">
        <div class="community_title"><p class="zz">자유게시판</p></div>
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
   	<button type="button" onclick="location.href='co_writeForm.co'" id="community_write">글쓰기</button>
   	
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