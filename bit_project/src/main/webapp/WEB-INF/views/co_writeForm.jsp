<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>community(main)</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<link
	href="${pageContext.request.contextPath}/resources/css/community.css"
	rel="stylesheet" type="text/css" />
<!-- css -->
<script src="https://kit.fontawesome.com/fa509a9993.js"
	crossorigin="anonymous"></script>
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.js"></script>
<!--icon-->
<style>
#community_cententbox {
	margin: 0 auto;
	width: 950px;
}
#category_select {
	position: relative;
	padding-right: 20px;
	color: #333;
	cursor: pointer;
	border: none;
	border-bottom: 1px solid rgba(128, 128, 128, 0.3);
	border-radius: 0;
	width: 188px;
	height: 41px;
	font-size: 17px;
}

#category_select:focus {
	outline:none;
}

#post_subject {
	font-size: 20px;
	border: none;
	border-bottom: 1px solid rgba(128, 128, 128, 0.3);
	width: 610px;
	border-radius: 0;
	padding: 8px 118px 8px 0;
	line-height: 1.2;
}

#post_subject:focus {
	outline:none;
}

#test {
	text-align: center;
	
}
#test > #story {
	margin-top: 30px;
	display: inline-block;
	width: 950px;
}

</style>
</head>
<body>

	<div style="height: 50px;">
		<header>
			<%@ include file="/WEB-INF/views/header2.jsp"%>
		</header>
	</div>

	<div id="community_container_menubar">
		<div class="community_menubar">
			<a class="community_menubar_item" href="#">자유게시판</a> <a
				class="community_menubar_item" href="#">육아사진</a> <a
				class="community_menubar_item" href="#">정보공유(팁)</a> <a
				class="community_menubar_item" href="#">공구게시판</a> <a
				class="community_menubar_item" href="#">육아게시판</a> <a
				class="community_menubar_item" href="#">이슈,토론게시판</a>
		</div>
	</div>

	<div id="community_container_header">
		<div class="community_title">
			<h1>게시판이름</h1>
		</div>
		<div></div>
	</div>

	<div id="community_cententbox">
		<span>
			<select id="category_select">
				<option value="board1">자유게시판</option>
				<option value="board2" selected>사진게시판</option>
				<option value="board3">게시판3</option>
				<option value="board4">게시판4</option>
			</select>
		</span>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<span>
			<input id="post_subject" name="subject" class="" type="text"
				placeholder="제목">
		</span>
	</div>
			<div id="summernote"></div>    
	
	<script type="text/javascript">
	$(document).ready(function(){
        var toolbar = [
            ['style', ['bold', 'italic', 'underline', 'clear']],
            ['font', ['strikethrough', 'superscript', 'subscript']],
            ['fontsize', ['fontsize']],
            ['color', ['color']],
            ['para', ['ul', 'ol', 'paragraph']],
            ['height', ['height']],
            ['table', ['table']],
            ['insert', ['link', 'picture', 'hr']],
            ['view', ['fullscreen', 'codeview']],
            ['help', ['help']]
        ];
                
        var setting = {
            height : 300,
            minHeight: null,
            maxHeight: null,
            focus : true,
            lang : 'ko-KR',    
            toolbar : toolbar
        };
                
        $('#summernote').summernote(setting);
});
</script>
</body>
</html>