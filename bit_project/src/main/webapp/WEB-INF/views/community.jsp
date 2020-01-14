<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>community(main)</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"  content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<link href="${pageContext.request.contextPath}/resources/css/community.css" rel="stylesheet" type="text/css" /> <!-- css -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/dropdown.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modernizr-custom.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/dropdown.js"></script> <!-- dropdown -->

</head>
<body>

<div style="height: 50px;">
<header >
 	<%@ include file="/WEB-INF/views/header1.jsp" %> 
</header>
</div>

    <div id="community_container_menubar">
        <div class="community_menubar">
            <a class="community_menubar_item" href="community.co">자유게시판</a>
            <a class="community_menubar_item" href="community_img.co">육아사진</a>
            <a class="community_menubar_item" href="community.co">정보공유(팁)</a>
            <a class="community_menubar_item" href="community.co">공구게시판</a>
            <a class="community_menubar_item" href="community.co">육아게시판</a>
            <a class="community_menubar_item" href="co_writeForm.co">이슈,토론게시판</a>
        </div>
    </div>

    <div id="community_container_header">
        <div class="community_title">
            <h1>게시판이름</h1>
        </div>
    </div>
    
	<div id="community_container_filter">
	
	    <div class="community_search">
	        <div class="wrap">
	            <form action="" autocomplete="on">
	            <input id="search" name="search" type="text" > <!-- input -->
	            <i class="fas fa-search fa-2x"><input id="search_submit"  type="submit" name="search_submit"></i> <!-- icon -->
	            </form>
	        </div>
	    </div>
	    
     <div class="community_filter">
     	<section class="filter_main">
				<div class="wrapper-demo">
					<div id="dd" class="wrapper-dropdown" tabindex="1">
						<span>정렬</span>
						<ul class="dropdown">
							<li><a href="#">최신순</a></li>
							<li><a href="#">댓글순</a></li>
							<li><a href="#">스크랩순</a></li>
						</ul>
					</div>
				​</div>
			</section>
	    </div>
	    
	   </div>

    <!--게시글 시작-->
    <div id="community_container_mt">
        <div class="underline"></div>
        <div class="community_mt_title">
        <a href="community_detail.co" class="community_mt_link"> </a><!-- 임시 -->
            <div class="community_mt_img">
                <img src="${pageContext.request.contextPath}/resources/img/child.jpg" style="width: 120px; height: 120px;" class="com_img">
            </div><!-- 제목 2줄이상 쓰지마세요 -->
            <h2>제목제목제목제목제목제제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목목제목</h2>
            <p class="community_mt_mt">내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용</p>
            <footer class="community_mt_footer">
                <a class="community_mt_footer_user" href="main.ma"> <!-- 글쓴이 누르면 작성자글 검색? -->
                    <img><i class="fas fa-user-circle"></i>
                    <span class="community_mt_footer_users"><글쓴이></span>
                </a>
                <span class="community_mt_footer_caption">
                    <span class="community_mt_footer_time">
                        <시간>
                    </span>
                    <span class="community_mt_footer_comments">
                        댓글 <>
                    </span>
                    <span class="community_mt_footer_views">
                        조회수 <>
                    </span>
                </span>
            </footer>
        </div>
    </div>
    <!--게시글 끝-->
        
    <div id="community_page">
        <h1 style="text-align: center;">페이지 들어갈자리</h1>
    </div>

<footer>
	<%@ include file="/WEB-INF/views/footer.jsp" %> 
</footer>

</body>
</html>