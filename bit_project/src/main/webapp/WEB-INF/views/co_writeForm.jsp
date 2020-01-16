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
<link
	href="${pageContext.request.contextPath}/resources/css/community_writeform.css"
	rel="stylesheet" type="text/css" />
<!-- summernote -->
<!-- include libraries(jQuery, bootstrap) -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- include summernote css/js-->
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.js"></script>
<!-- include summernote-ko-KR -->
<script
	src="${pageContext.request.contextPath}/resources/js/summernote-ko-KR.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/co_writeForm.js"></script>



</head>
<body>

	<div style="height: 50px;">
		<header>
			<%@ include file="/WEB-INF/views/header2.jsp"%>
		</header>
	</div>

	<div id="community_container_menubar">
		<div class="community_menubar">
			<a class="community_menubar_item" href="community.co">자유게시판</a> <a
				class="community_menubar_item" href="community_img.co">육아사진</a> <a
				class="community_menubar_item" href="community.co">정보공유(팁)</a> <a
				class="community_menubar_item" href="community.co">공구게시판</a> <a
				class="community_menubar_item" href="community.co">육아게시판</a> <a
				class="community_menubar_item" href="co_writeForm.co">이슈,토론게시판</a>
		</div>
	</div>

	<div id="community_container_header">
		<div class="community_title">
			<h1></h1>
		</div>
		<div></div>
	</div>
	<div id="community-contentbox">
		<form method="post" action="/write">
			<div id="cententbox-top">
				<span> <select id="category_select">
						<option value="board1">자유게시판</option>
						<option value="board2" selected>사진게시판</option>
						<option value="board3">게시판3</option>
						<option value="board4">게시판4</option>
				</select>
				</span> <span> <input id="title" name="title" class="" type="text"
					placeholder="제목">
				</span>
			</div>

			<div id="contentbox-middle">
				<textarea class="form-control" id="summernote" name="content"
					placeholder="content" maxlength="140" rows="7"></textarea>
			</div>
			<div id="contentbox-bottom">
				<button type="submit" id="submit-btn" name="submit">글쓰기</button>
				<input type="button" id="cancel-btn" value="취소">
			</div>
		</form>
	</div>

	<footer>
		<%@ include file="/WEB-INF/views/footer.jsp"%>
	</footer>
</body>
</html>