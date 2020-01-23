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
	 		<form method="post" id="articleForm" role="form" action="/article"> 
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
				
				  <br style="clear: both">
				  <h3 style="margin-bottom: 25px;">Article Form</h3>
				  <div class="form-group">
				    <input type="text" class="form-control" id="subject" name="subject" placeholder="subject" required>
				  </div>
				  <div class="form-group">
				    <textarea class="form-control" id="summernote" name="content" placeholder="content" maxlength="140" rows="7"></textarea>
				  </div>
<!--				  <button type="submit" id="submit" name="submit" class="btn btn-primary pull-right">Submit Form</button>-->

			</div>
			<div id="contentbox-bottom">
				<button type="submit" id="submit-btn" name="submit" class="btn btn-primary pull-right">글쓰기</button>
				<button type="button" id="cancel-btn" >취소</button>
			</div>
			</form>
	</div>

	<%-- <footer>
		<%@ include file="/WEB-INF/views/footer.jsp"%>
	</footer> --%>
<script type="text/javascript">
    $(document).ready(function() {
      $('#summernote').summernote({
        height: 300,
        minHeight: null,
        maxHeight: null,
        focus: true,
        callbacks: {
          onImageUpload: function(files, editor, welEditable) {
            for (var i = files.length - 1; i >= 0; i--) {
              sendFile(files[i], this);
            }
          }
        }
      });
    });
    
    function sendFile(file, el) {
      var form_data = new FormData();
      form_data.append('file', file);
      $.ajax({
        data: form_data,
        type: "POST",
        url: '/image',
        cache: false,
        contentType: false,
        enctype: 'multipart/form-data',
        processData: false,
        success: function(url) {
          $(el).summernote('editor.insertImage', url);
          $('#imageBoard > ul').append('<li><img src="'+url+'" width="480" height="auto"/></li>');
        }
      });
    }
</script>

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
</body>
</html>