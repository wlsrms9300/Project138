<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import ="java.util.ArrayList" %>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*, com.spring.community.*" %>
<%
	String nickname = (String)request.getAttribute("nickname");
%>
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
<script>
	$("document").ready(function(){
		var pageCount = 5; //한 화면에 나타낼 페이지 수
		var currentPage = 1;
		var totalData = 0;
		var dataPerPage = 5;
		
		userSearch(totalData, dataPerPage, pageCount, currentPage);
		alert("ready!!!! totalData : " + totalData + "dataPerPage : " + dataPerPage + "pageCount : " + pageCount + "currentPage : " + currentPage);
	});
	
		function userSearch(totalData, dataPerPage, pageCount, currentPage) {
			var nickname = $(".nickname_zz").text();
			alert("nickname : " + nickname);
			var pageCount = 5; //한 화면에 나타낼 페이지 수
			var dataPerPage = 5;
			
			alert("function!!!! totalData : " + totalData + "dataPerPage : " + dataPerPage + "pageCount : " + pageCount + "currentPage : " + currentPage);
		$.ajax({
            url : '/bit_project/getuserSearch.co', 
	            type : "post", 
	            data : {"nickname" : nickname, "page" : currentPage},
	            dataType: 'json',
	            async: false,
	        	cache : false,
            	success : function(data) {
            		$('#community_data').empty();
            		$(".paginate").empty();  //페이징 초기화
            		
            		if(data.length != 0) { //게시글 존재
 					 $.each(data, function(index, item) {
 						alert("총 갯수 : " + item.cmsearch_count);
 						totalData = item.cmsearch_count; //검색 결과 총 갯수
 						 
 						var output = ' ';
						var reg_date = new Date(item.regist); 
		                var date = date_format(reg_date);  //날짜 format
		                
							output += '<div id="community_container_mt">';
							output += '<div class="underline"></div>';
							output += '<div class="community_mt_title">';
							output += '<a class="community_mt_link" href="community_detail.co?board_num=' + item.board_num  + '&pageNum=1"' + '</a>';
							output += '<div class="community_mt_img">';
							output += '<img src="" class="com_img">';
							output += '</div>';
							output += '<h2 class="community_name">' + item.board_name + '</h2>';
							output += '<p class="community_mt_mt">' + item.content + '</p>';
							output += '<footer class="community_mt_footer">';
							output += '<a class="community_mt_footer_user" href="community_user.co?nickname=' + item.nickname + ' ">';
							output += '<img><i class="fas fa-user-circle fas-2x"></i>';
							output += '<span class="community_mt_footer_users">' +  item.nickname + ' </span>';
							output += '</a>';
							output += '<span class="community_mt_footer_caption">';
							output += '<span class="community_mt_footer_time">' + date + ' </span>';
							output += '<span class="community_mt_footer_comments">' + "댓글 " + item.co_count + ' </span>';
							output += '<span class="community_mt_footer_views">' + "조회수 " + item.count + ' </span>';
							output += '<span class="community_mt_footer_category">' + "[" + item.category + "]" + ' </span>';
							output += '</span>';
							output += '</footer>';
							output += '</div><br>';
							output += '</div>';
							
							$('#community_data').append(output);
						}); 
	 					alert("total : " + totalData);
	 					paging(totalData, dataPerPage, pageCount, currentPage);
		            
 				}
            		else {
            			var outputnull = "<div class='community_ncontainer'>";
							outputnull += "<div>검색 결과가 없습니다.</div>";
							outputnull += "</div>";
							$('#community_data').append(outputnull);
						}
					},
	              error : function(data){
	            		alert('검색 실패');
            }
        }); //ajax
		}
        
        //날짜 format
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
        
        
        function paging(totalData, dataPerPage, pageCount, currentPage) {
        	alert('출력할 totaldata : '+totalData); //333333
        	/* $(".paginate").empty();  */
            var totalPageDevide = totalData / dataPerPage;
            var pageGroupDevide = currentPage / pageCount;

            var totalPage = Math.ceil(totalPageDevide);    // 총 페이지 수 1
            var pageGroup = Math.ceil(pageGroupDevide);    // 페이지 그룹 0
            
            var last = pageGroup * pageCount; //0

            if (last > totalPage) // 0 > 1
                last = totalPage;
            
            var first = last - (pageCount - 1); // 0 - (5 - 1)
            
            if (first <= 0) {
                first = 1; //
            }
            var next = last + 1; // 다음 1
            var prev = first - 1; // 이전 0
            var one = 1; // 맨 처음 
            var lastNo = totalPage; // 맨 끝 1

            var html = "";

            if (prev > 0) {
                html += "<a href=# id='one'>&lt;&lt;&nbsp;&nbsp;</a> ";
                html += "<a href=# id='prev'>&lt;&nbsp;&nbsp;</a> ";

            }
            
            for (var i = first; i <= last; i++) {
            	alert("페이징 만드는중");
                //html += "<a href='#' id=" + i + ">" + i + "</a> ";
                html += "<a href='javascript:userSearch(totalData, dataPerPage, pagecount, " + i + ")' id=" + i + ">" + i + "</a> ";
                //html += "<a href='javascript:snsData(0, 6, 10, " + i + ")' id=" + i + ">" + i + "</a> ";
                
            }

            if(totalPage==0){
            	
            }else {
            	  if (last < totalPage) // 0 < 1
            	        html += "<a href=# id='next'>&gt;&nbsp;&nbsp;</a>";
            	        html += "<a href='javascript:void(0);' id='lastNo'>&gt;&gt;&nbsp;&nbsp;</a> ";

            	        $(".paginate").html(html);    // 페이지 목록 생성
            	        $(".paginate a").removeClass("page_on");

            	        $(".paginate a#" + currentPage).addClass("page_on"); // 현재 페이지 표시	
            }

            $(".paginate a").click(function () {
                var $item = $(this);
                var $id = $item.attr("id");
                var selectedPage = $item.text(); // 번호 클릭.

                if ($id == "one") selectedPage = one;
                if ($id == "prev") selectedPage = prev;
                if ($id == "next") selectedPage = next;
                if ($id == "lastNo") selectedPage = lastNo;
                
                alert(selectedPage + "페이지 이동");
                userSearch(totalData, dataPerPage, pageCount, selectedPage);
                paging(totalData, dataPerPage, pageCount, selectedPage);// 페이징
            });
            
        }
        
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
            <a class="community_menubar_item" href="community.co" value="자유게시판">자유게시판</a>
            <a class="community_menubar_item" href="community.co" value="육아사진">육아사진</a>
            <a class="community_menubar_item" href="community.co" value="정보공유">정보공유(팁)</a>
            <a class="community_menubar_item" href="community.co" value="공구게시판">공구게시판</a>
            <a class="community_menubar_item" href="community.co" value="육아게시판">육아게시판</a>
            <a class="community_menubar_item" href="community.co" value="이슈게시판">이슈,토론게시판</a>
        </div>
    </div>
    
<!-- 게시판 내용 시작 -->
<div id="community_main">
    
    <div id="community_container_header">
        <div class="community_title"><p class="zz"></p></div>
    </div>
	 
	 <!-- 닉네임 검색 결과 -->
	 <div class="community_search_result"><p class="nickname_zz" style="font-size: 12px;"><%=nickname %></p><p>님 검색 결과</p></div>
	 
	<!-- 게시글 리스트 -->
    <div id="community_data"></div>
    
	<!-- 페이징 -->
    <div class="paginate" style="text-align:center;"></div>
    
</div> 

<footer>
	 <%@ include file="/WEB-INF/views/footer.jsp" %> 
</footer>

</body>
</html>