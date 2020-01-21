<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.spring.community.*" %>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%
SimpleDateFormat sdf = new SimpleDateFormat("yy/MM/dd HH:mm");
CommunityVO cmvo = (CommunityVO)request.getAttribute("cmvo");
%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"  content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">

<title>community_detail</title>
<link href="${pageContext.request.contextPath}/resources/css/community_detail.css" rel="stylesheet" type="text/css" /> <!-- css -->
<!-- <script src="https://kit.fontawesome.com/fa509a9993.js" crossorigin="anonymous"></script>  --><!--icon--> 
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$("document").ready(function(){
		 //날짜형식
        function date_format(format) {
            var year = format.getFullYear();
            var month = format.getMonth()+1;
            var hour = format.getHours();
            var min = format.getMinutes();
            
            if(month<10) {
               month = '0' + month;
            }
            var date = format.getHours();
            if(hour<10) {
               hour = '0' + hour;
            }
            var min = format.getMinutes();
            if(min<10) {
               min = '0' + min;
            }
            return year + "-" + month + "-" + date + "-" + hour +":" + min;
         }
		 
		function coList() {
			$('.community_comments_view').empty();
			
			$.ajax({
				url:'/bit_project/getCO.co',
				type: 'POST',
				data:{'board_num' : $("#comment_num").attr("value")},
				dataType: "json",
				contentType: 'application/x-www-form-urlencoded; charset=utf-8',
				success: function(data) {
					if(data.length!=0){ //댓글 존재할시
 					 $.each(data, function(index, item) {
 						 var output = ' ';
 						var reg_date = new Date(item.regist); 
		                var date = date_format(reg_date);
 						 
 						 output += '<div class="community_comments_view_user">';
  						 output += '<img>';
 						 output += '</div>';
 						 output += '<div class="community_comments_view_container">';
 						 output += '<div class="community_comments_view_comments">';
 						 output += '<span class="community_mt_footer_users">' + item.nickname + '</span>';
 						 output += '<input type="text" readonly onfocus:"this.blur()"; value="' + item.content + '">';
 						 output += '</div>';
 						 output += '<div class="community_comments_view_actions">';
 						 output += '<span class="community_comments_view_time">' + date + '</span>';
  						 output += '<div class="community_comments_view_add">';
 						 output += '<button>' + "댓글달기" + '</button>' + '</div>';
 						 output += '</div>';
 						output += '</div>';
 						output += '</div>';
 						 
 						console.log("output:" + output);
 						$('.community_comments_view').append(output);
					});
					}
					else { //댓글 없을때
						var outputnull = "<div>";
						outputnull += "<div style='text-align:center; width:950px;'>등록된 댓글이 없습니다.</div>";
						outputnull += "</div>";
						$('.community_comments_view').append(outputnull);
					}
				},
				error:function(request,status,error){
			        alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
			       }
				});
			}
		coList();
		
	});
</script>
</head>

<body>
<!-- header 시작 -->
<div style="height: 60px;">
<header >
 	<%@ include file="/WEB-INF/views/header1.jsp" %> 
</header>
</div>
<!-- header 끝 -->

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

    <div id="community_container_header_d">
        <div class="community_title_d">
            <h2>자유게시판</h2>
        </div>
    </div>

<!--     </div> -->
    <!--게시글 시작-->
    <div id="community_container_mt_d">
        <div class="community_mt_title_d">
            <h1><%=cmvo.getBoard_name() %></h1>
        </div>
        <hr>
        <div class="community_mt_mt_d">
            <p class="community_mt_mt">
            <%=cmvo.getContent() %>
            </p>
        </div>
        <footer class="community_mt_footer">
            <div class="community_mt_footer_caption">
                <span class="community_mt_footer_time">
                    <%=sdf.format(cmvo.getRegist()) %>
                </span>
                <span class="community_mt_footer_views">
                    조회수 <%=cmvo.getCount() %>
                </span>
                <span class="community_mt_footer_share">
<%--                     스크랩 <%=cmvo.getScrap_count() %> --%>
                    스크랩 <%=cmvo.getScrap_count() %>
                </span>
                <div class="community_mt_footer_share_click">
                    <button class="community_comments_form_photo" aria-label="공유하기" type="button">
                        <i class="fas fa-share-alt fa-2x"></i>
                    </button>
                </div>
            </div>
        </footer>
        <hr>
    </div>
    <!-- 게시글  끝 -->
    
    <!-- 댓글입력창 시작 -->
    <div id="community_container_comments">
    
        <div class="community_comments_count">
            <h2>댓글</h2><div class="count_circle"></div>
        </div>
        <div class="community_comments_form">
            <div class="community_comments_form_user">
                <img><i class="fas fa-user-circle fa-2x"></i>
            </div>
            <div class="community_comments_form_input">
            <input type="hidden" name="comment_num" id="comment_num" value="<%=cmvo.getBoard_num() %>">
                <div class="community_comments_form_content">
                    <div class="community_comments_form_comments" id="comments" contenteditable="true" placeholder="의견을 남겨 보세요."></div>
                </div>
                <div class="community_comments_form_actions">
                    <button class="community_comments_form_photo" aria-label="사진업로드" type="button">
                        <i class="fas fa-camera fa-2x"></i>
                    </button>
                    <button class="community_comments_form_enter" type="button" >등록</button>
                </div>
            </div>
        </div>
    <!-- 댓글입력창 끝 -->   
       
       <!--  댓글 보기 -->
        <div class="community_comments_view"></div>

    </div>
    
<footer>
	<%@ include file="/WEB-INF/views/footer.jsp" %> 
</footer>

</body>
</html>