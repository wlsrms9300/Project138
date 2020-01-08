<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>community(main)</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="${pageContext.request.contextPath}/resources/css/community.css" rel="stylesheet" type="text/css" /> <!-- css -->
<script src="https://kit.fontawesome.com/fa509a9993.js" crossorigin="anonymous"></script> <!--icon--> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css"> <!-- wow -->
</head>
<body>

    <div id="community_container_menubar">
        <div class="community_menubar">
            <a class="community_menubar_item" href="#">자유게시판</a>
            <a class="community_menubar_item" href="#">육아사진</a>
            <a class="community_menubar_item" href="#">정보공유(팁)</a>
            <a class="community_menubar_item" href="#">공구게시판</a>
            <a class="community_menubar_item" href="#">육아게시판</a>
            <a class="community_menubar_item" href="#">이슈,토론게시판</a>
        </div>
    </div>

    <div id="community_container_header">
        <div class="community_title">
            <h1>게시판이름</h1>
        </div>
    </div>

    <div id="community_search">
        <div class="wrap">
            <form action="" autocomplete="on">
            <input id="search" name="search" type="text" > <!-- input -->
            <i class="fas fa-search fa-2x"><input id="search_submit" value="Rechercher" type="submit"></i> <!-- icon -->
            </form>
        </div>
    </div>

    <!--게시글 시작-->
    <div id="community_container_mt">
        <div class="community_mt_title">
        <a href="#">
            <div class="community_mt_img">
                <img src="http://placehold.it/120x120" class="com_img">
            </div>
            <h2>제목제목제목제목제목제제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목목제목</h2>
            <p class="community_mt_mt">내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용</p>
            <footer class="community_mt_footer">
                <span class="community_mt_footer_user">
                    <img><i class="fas fa-user-circle"></i>
                    <span class="community_mt_footer_users"><글쓴이></span>
                </span>
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
        </a>
        </div>
    </div>
    <!--게시글 끝-->

    <div id="community_page">
        <h1 style="text-align: center;">페이지 들어갈자리</h1>
    </div>

<%--  <div id="footer">
		<%@ include file="/WEB-INF/views/footer.jsp" %>
</div> --%>
</body>
</html>