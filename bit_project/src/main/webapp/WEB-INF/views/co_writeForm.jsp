<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String nickname_co = (String)session.getAttribute("nickname");
	String email_co = (String)session.getAttribute("email");
	String img_co = (String)session.getAttribute("img");
%>
<!DOCTYPE html>
<html>
<head>
<title>community</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<link href="${pageContext.request.contextPath}/resources/css/community_writeform.css" rel="stylesheet" type="text/css" />
<!-- summernote -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>
<!-- include summernote-ko-KR -->
<script src="${pageContext.request.contextPath}/resources/js/summernote-ko-KR.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/community_menu.js"></script>

</head>
<body>
<%@ include file="/WEB-INF/views/chatframe.jsp" %>
	<div style="height: 90px;">

		<header >
 			<%@ include file="/WEB-INF/views/header2.jsp" %> 
		</header>
	</div>

	<div id="community_container_header">
		<div class="community_title">
			<h1></h1>
		</div>
		<div></div>
	</div>
 	<div id="community-contentbox">
		<form method="post" name="writingForm" action="write.cw" role="form" enctype="multipart/form-data">
			<input type="hidden" name="nickname" value="<%=nickname_co %>" />
			<input type="hidden" name="email" value="<%=email_co %>" />
			<div id="cententbox-top">
			 	<span> 
			 		<select id="category_select" onchange="category_click()">
						<option value="자유게시판" selected>자유게시판</option>
						<option value="육아사진게시판">육아사진게시판</option>
						<option value="정보공유(팁)">정보공유(팁)</option>
						<option value="공구게시판">공구게시판</option>
						<option value="육아게시판">육아게시판</option>
						<option value="이슈,토론게시판">이슈,토론게시판</option>
					</select>
					<input type="hidden" name="category" value="자유게시판" />
				</span>
				<span> 
					<input id="title" name="board_name" class="" type="text" placeholder="제목">
				</span>
			</div>

			<div id="contentbox-middle">
				<textarea class="summernote" id="summernote" name="content"
					placeholder="content" maxlength="140" rows="7"></textarea>
			</div>
			<div id="contentbox-bottom">
				<input type ="button" id="submit-btn" onclick="insert_chk()" value="글쓰기">
				<input type="button" id="cancel-btn" onclick="history.back(-1);" value="취소">
			</div>
		</form>
	</div> 
	
	

  <script type="text/javascript">
  $(document).ready(function(){
	  $("li:contains().removeClass('active')");
  });
  
  function insert_chk() {
	var writingForm = document.writingForm;
	var board_name = writingForm.board_name.value;
	var content = writingForm.content.value;
	
	var target = document.getElementById("category_select");
	var option = target.options[target.selectedIndex].value;
	
	if(!board_name || !content) {
	 alert("내용을 입력해주세요");
	}else {
	 if(option == "육아사진게시판" && $(content).find('img').attr('src') == null){
	  	alert("사진을 1개 이상 올려주세요");
	 }else {
	 writingForm.submit();
	 }
	}
  }
  
	//카테고리선택
	function category_click() {
		var target = document.getElementById("category_select");
		var category = target.options[target.selectedIndex].value;
		$('input[name=category]').attr('value',category);
	}
  
  $(document).ready(function() {
	    $("#summernote").summernote({
	        placeholder : 'content',
			minHeight : 370,
			maxHeight : null,
			focus : true,
	        lang : 'ko-KR',
	        callbacks: {
	            onImageUpload:function(files, editor, welEditable){
	                for(var i=files.length-1;i>=0;i--){
	                    sendFile(files[i], this);
	                }
	            }
	        }
	    });
	});

	function sendFile(file, editor, welEditable){
	    var form_data = new FormData();
	    form_data.append('file', file);
	    $.ajax({
	        data:form_data,
	        type:"POST",
	        url:'/bit_project/image.im',
	        dataType : "json",
	        cache:false,
	        contentType:false,
	        processData:false,
			success: function(data){
				var obj = data.url;
				alert(obj);
    		    var image = $('<img>').attr('src', '' + obj); // 에디터에 img 태그로 저장
	        	$('.summernote').summernote("insertNode", image[0]); // summernote 에디터에 img 태그 전송
	        },
	        error: function() {
	            console.log("에이젝스 통신 실패");
	        }
	    });
	}
</script>

</body>
</html>