<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import ="java.util.ArrayList" %>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*, com.spring.community.*" %>

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
        
        //카테고리
        function selectData(){  
        	$('.community_menubar_item').on('click',function(e){
        		e.preventDefault();
        			var category = $(this).attr('value');
        			alert(category);
        			$.ajax({
        				 url : '/bit_project/getCM.co', // 이 주소로 
        	              type : "post", // 포스트 방식으로 보내는데
        	              data : {"category" : category}, // kind를 kind로 명명하여 보내겠다
        	              async: false,
        	              success : function(data){ 
        	                 console.log(data);
        	                 $('#community_data').empty();
        						if(data.length != 0) {
        	 					 	$.each(data, function(index, item) {
        	 					 	var m = item.category;
        							var output = ' ';
        							var reg_date = new Date(item.regist); 
        			                var date = date_format(reg_date);
        			                console.log(item.category);
    			                	
        			                if (item.category != "육아사진") {
        			                	
	        							output += '<div id="community_container_mt">';
	        							output += '<div class="underline"></div>';
	        							output += '<div class="community_mt_title">';
	        							output += '<a class="community_mt_link" href="community_detail.co?board_num=' + item.board_num  + '&pageNum=1"' + '</a>';
	        							output += '<div class="community_mt_img">';
	        							output += '<img src="${pageContext.request.contextPath}/resources/img/child.jpg" class="com_img">';
	        							output += '</div>';
	        							output += '<h2 class="community_name">' + item.board_name + '</h2>';
	        							output += '<p class="community_mt_mt">' + item.content + '</p>';
	        							output += '<footer class="community_mt_footer">';
	        							output += '<a class="community_mt_footer_user" href="main.ma">';
	        							output += '<img><i class="fas fa-user-circle fas-2x"></i>';
	        							output += '<span class="community_mt_footer_users">' +  item.nickname + '</span>';
	        							output += '</a>';
	        							output += '<span class="community_mt_footer_caption">';
	        							output += '<span class="community_mt_footer_time">' + "시간 " + date + '</span>';
	        							output += '<span class="community_mt_footer_comments">' + "댓글 " + item.co_count + '</span>';
	        							output += '<span class="community_mt_footer_views">' + "조회수 " + item.count + '</span>';
	        							output += '</span>';
	        							output += '</footer>';
	        							output += '</div><br>';
	        							output += '</div>';
	        							
	        							$('#community_data').append(output);
        			                }else {
        			                	output += '<div id="community_container_mi">';
	        							output += '<div class="community_mi_title">';
	        							output += '<a class="community_mi_link" href="community_detail.co?board_num=' + item.board_num  + '&pageNum=1"' + '</a>';
	        							output += '<div class="community_mi_img">';
	        							output += '<img src="${pageContext.request.contextPath}/resources/img/child.jpg" class="com_img">';
	        							output += '</div>';
	        							output += '<h2 class="community_name">' + item.board_name + '</h2>';
	        							output += '<address class="community_mi_writer">';
	        							output += '<a class="community_mi_writer_user">'; //글쓴이 ?? 검색
	        							output += '<img><i class="fas fa-user-circle"></i>';
	        							output += '<span class="community_mt_footer_users">' + item.nickname + '</span>';
	        							output += '</a>';
	        							output += '</address>';
	        							output += '<footer class="community_mi_footer">';
	        							output += '<span class="community_mi_footer_caption">';
	        							output += '<span class="community_mi_footer_time">' + "시간 " + date + '</span>';
	        							output += '<span class="community_mi_footer_comments">' + "댓글 " + item.co_count + '</span>';
	        							output += '<span class="community_mi_footer_views">' + "조회수 " + item.count + '</span>';
	        							output += '</span>';
	        							output += '</footer>';
	        							output += '</div><br>';
	        							output += '</div>';
	        							
	        							$('#community_data').append(output);
        			                }
        			                
        						}); 
        						}
        						else {
        							var outputnull = "<div class='community_ncontainer'>";
        							outputnull += "<div>등록된 게시글이 없습니다.</div>";
        							outputnull += "</div>";
        							$('#community_data').append(outputnull);
        						}
        					},
        	              error : function(data){
        	            	 alert('error');
        	              }//error
        			})//ajax
        	        
        });//ready
        }
        selectData();
	});
	
	</script>
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
            <a class="community_menubar_item" href="co_writeForm.co">이슈,토론게시판</a>
        </div>
    </div>
    
<div id="community_main">
    <div id="community_container_header">
        <div class="community_title">
            <h1>게시판</h1>
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
	   
	<!-- 게시글 리스트 -->
    <div id="community_data"></div> 
    
	<!-- 페이징 -->
    <div class="paginate"><a></a></div>
</div> <!-- 게시판 내용 끝 -->
<footer>
	<%@ include file="/WEB-INF/views/footer.jsp" %> 
</footer>

</body>
</html>