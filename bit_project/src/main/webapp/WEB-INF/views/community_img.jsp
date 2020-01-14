<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>community_img</title>
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
            <h1>게시판 이름</h1>
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
    <div id="community_container_mi">
    
       <div class="community_mi_title">
            <a href="main.ma" class="community_mi_link"></a>
            <div class="community_mi_img">
                <img src="${pageContext.request.contextPath}/resources/img/child.jpg" class="com_img">
            </div>
            <h3>제목제목제목제목제목제제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목목제목</h3>
            <address class="community_mi_writer">
                <a class="community_mi_writer_user" href="community_detail.co">
                    <img><i class="fas fa-user-circle"></i>
                    <span class="community_mt_footer_users">글쓴이</span>
                </a>
            </address>
            <footer class="community_mi_footer">
                <span class="community_mi_footer_caption">
                    <span class="community_mi_footer_time">
                        <시간>
                    </span>
                    <span class="community_mi_footer_comments">
                        댓글 <>
                    </span>
                    <span class="community_mi_footer_views">
                        조회수 <>
                    </span>
                </span>
            </footer>
        </div>
        
 <div class="community_mi_title">
            <a href="main.ma" class="community_mi_link"></a>
            <div class="community_mi_img">
                <img src="${pageContext.request.contextPath}/resources/img/child.jpg" class="com_img">
            </div>
            <h3>제목제목제목제목제목제제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목목제목</h3>
            <address class="community_mi_writer">
                <a class="community_mi_writer_user" href="community_detail.co">
                    <img><i class="fas fa-user-circle"></i>
                    <span class="community_mt_footer_users">글쓴이</span>
                </a>
            </address>
            <footer class="community_mi_footer">
                <span class="community_mi_footer_caption">
                    <span class="community_mi_footer_time">
                        <시간>
                    </span>
                    <span class="community_mi_footer_comments">
                        댓글 <>
                    </span>
                    <span class="community_mi_footer_views">
                        조회수 <>
                    </span>
                </span>
            </footer>
        </div>
        
         <div class="community_mi_title">
            <a href="main.ma" class="community_mi_link"></a>
            <div class="community_mi_img">
                <img src="${pageContext.request.contextPath}/resources/img/child.jpg" class="com_img">
            </div>
            <h3>제목제목제목제목제목제제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목목제목</h3>
            <address class="community_mi_writer">
                <a class="community_mi_writer_user" href="community_detail.co">
                    <img><i class="fas fa-user-circle"></i>
                    <span class="community_mt_footer_users">글쓴이</span>
                </a>
            </address>
            <footer class="community_mi_footer">
                <span class="community_mi_footer_caption">
                    <span class="community_mi_footer_time">
                        <시간>
                    </span>
                    <span class="community_mi_footer_comments">
                        댓글 <>
                    </span>
                    <span class="community_mi_footer_views">
                        조회수 <>
                    </span>
                </span>
            </footer>
        </div>
    <!--게시글 끝-->
    </div>
    
    <div id="community_page">
        페이지 들어갈자리
    </div>

<footer>
	<%@ include file="/WEB-INF/views/footer.jsp" %> 
</footer>

</body>
</html>