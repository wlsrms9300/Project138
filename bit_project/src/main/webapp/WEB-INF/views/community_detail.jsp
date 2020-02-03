<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.spring.community.*" %>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%
	SimpleDateFormat sdf = new SimpleDateFormat("yy/MM/dd HH:mm");
	CommunityVO cmvo = (CommunityVO)request.getAttribute("cmvo");
	CommentVO covo = (CommentVO)request.getAttribute("covo");
	int comment_count = (int)request.getAttribute("cocount");
	
	String nickname_co = (String)session.getAttribute("nickname");
	String img_co = (String)session.getAttribute("img");
%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"  content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">

<title>community_detail</title>
<link href="${pageContext.request.contextPath}/resources/css/community_detail.css" rel="stylesheet" type="text/css" /> <!-- css -->

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
            <a class="community_menubar_item" href="community.co" value="자유게시판">자유게시판</a>
            <a class="community_menubar_item" href="community.co" value="육아사진">육아사진</a>
            <a class="community_menubar_item" href="community.co" value="정보공유">정보공유(팁)</a>
            <a class="community_menubar_item" href="community.co" value="공구게시판">공구게시판</a>
            <a class="community_menubar_item" href="community.co" value="육아게시판">육아게시판</a>
            <a class="community_menubar_item" href="community.co" value="이슈게시판">이슈,토론게시판</a>
        </div>
    </div>

    <div id="community_container_header_d">
        <div class="community_title_d">
            <h2><%=cmvo.getCategory() %></h2>
        </div>
    </div>

<!--     </div> -->
    <!--게시글 시작-->
    <div id="community_container_mt_d">
        <div class="community_mt_title_d">
            <h1><%=cmvo.getBoard_name() %></h1>
        </div>
        <hr>
        <div class="community_mt_mt">
            <%=cmvo.getContent() %>
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
                    스크랩 <%=cmvo.getScrap_count() %>
                </span>
                <div class="community_mt_footer_share_click">
                    <button class="community_comments_form_photo" aria-label="공유하기" type="button">
                        <i class="fas fa-share-alt fa-2x"></i>
                    </button>
                </div>

                <div class="community_mt_footer_btn" style="width: 300px; float: right;">
                		<button class="community_mt_footer_update_btn" onclick="location.href='updateForm.cw?board_num=<%=cmvo.getBoard_num() %>'">수정</button>
                		<button class="community_mt_footer_update_btn" onclick="location.href='delete.cw?board_num=<%=cmvo.getBoard_num() %>'">삭제</button>
                </div>

            </div>
        </footer>
        <hr>
    </div>
    <!-- 게시글  끝 -->
    
    <!-- 댓글입력창 시작 -->
    <div id="community_container_comments">
        <div class="community_comments_count">
            <h2>댓글</h2><div class="count_circle"><p><%=comment_count %></p></div>
        </div>
     <form method="POST" name="commentsForm" id ="commentsForm" enctype="multipart/form-data" accept-charset="utf-8">
        <div class="community_comments_form">
            <div class="community_comments_form_user">
            	<input type="hidden" name="nickname" id="nickname1" value="<%=nickname_co %>">
                <img>
            </div>
            <div class="community_comments_form_input">
            <input type="hidden" name="board_num" id="board_num" value="<%=cmvo.getBoard_num() %>">
                <div class="community_comments_form_content">
                    <input type="text" class="community_comments_form_comments" name="content" contenteditable="true" placeholder="의견을 남겨 보세요.">
                </div>
                <div class="community_comments_form_actions">
                    <button class="community_comments_form_photo" aria-label="사진업로드" type="button">
                        <i class="fas fa-camera fa-2x"></i>
                    </button>
                    <button class="community_comments_form_enter" id="community_comments_form_enter" type="button">등록</button>
                </div>
            </div>
        </div>
	</form>
    <!-- 댓글입력창 끝 -->   
       
       <!--  댓글 목록 시작 -->
        <div class="community_comments_view">
		
		<!-- 대댓 폼 -->
<!-- 		<form id="answerForm" method="POST" action="./answerCO.co">
			<div class="community_answer_form">
				<div class="community_answer_form_user">
					<input type="hidden" name="nickname" id="nickname1" value="zz">
					<img>
				</div>
				<div class="community_answer_form_input">
					<input type="hidden" name="comment_num" value="eee">
					<div class="community_answer_form_content">
						<input type="text" class="community_answer_form_comments" name="content" contenteditable="true" placeholder="의견을 남겨 보세요.">
					</div>
					<div class="community_answer_form_actions">
						<button class="community_answer_form_photo" aria-label="사진업로드" type="button">
							<i class="fas fa-camera fa-2x"></i>
						</button>
						<button class="community_answer_form_enter" id="community_answer_form_enter" type="button">등록</button>
					</div>
				</div>
			</div>
		</form> -->
		
	</div> <!-- 댓글 목록 끝 -->
	</div> <!-- 댓글 입력창 끝 -->
	
	<!-- 페이징 -->
    <div class="paginate" style="text-align:center;"></div>
    
<%--     
<footer>
	<%@ include file="/WEB-INF/views/footer.jsp" %> 
</footer>
 --%>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
var pageCount = 5; //한 화면에 나타낼 페이지 수 
var dataPerPage = 5; //화면에 뿌려줄 댓글 수

	$("document").ready(function(){
		var currentPage = 1;
		var totalData = 0;
		
		coList(totalData, dataPerPage, pageCount, currentPage);
		
		//댓글 등록
		document.getElementById("community_comments_form_enter").addEventListener("click", cowrite);
		
		function cowrite() {
			var params = $("#commentsForm").serialize(); //#commentsForm : 이름과 값. 문자형태로 만들어 params에 저장
			alert(params);
			
			$.ajax({
				url:'/bit_project/writeCO.co',
				type: 'POST',
				data: params,
				dataType: "json",
				contentType: 'application/x-www-form-urlencoded; charset=utf-8',
				success: function(retVal) {
					if (retVal.res == "OK") { //데이터 성공일때 이벤트 작성
						coList(totalData, dataPerPage, pageCount, currentPage);
						$('.community_comments_form_comments').val(''); //초기화
					}
				},
				error:function(request,status,error){
			    		alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
			    }
			}); //ajax
		} //function
		
		
		
	}); //ready
	
	//댓글 수정 폼
    function comod_form($comment_num) {
		alert("댓글 수정 시작");
     	
     	var num = $comment_num;
     	alert(num);
     	
     	if (num == $('.comment_form').attr('id')) {
     		$('input[id="' + num + '"]').removeAttr("readonly");
     		$('input[id="' + num + '"]').css("background", "pink");
     		$('div[id="' + num + '"]').html("<button type='button' onclick='comod_btn()'>수정하기</button></div>");
     	}
	} 
	
    //댓글 수정
    function comod_btn() {
    	alert($(".comment_form").val());
    	
       jQuery.ajax({
          url : '/bit_project/updateCO.co',
          type : 'POST',
          data : {'comment_num' : $("#comment_num").attr("value"), 'content' : $(".comment_form").val()},
          contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
          dataType : "json",
          success : function(retVal) {
             if(retVal.res == "OK") {
            	 alert("댓글 수정이 완료되었습니다");
            	 coList(totalData, dataPerPage, pageCount, currentPage);
             }
             else {
                alert("댓글 수정 실패!!!")
             }
          },
          error:function() {
             alert("ajax 통신 실패!(update)");
          }
       });
    }
    
  //댓글 삭제
	function codel_btn() {
		msg = "삭제하시겠습니까?";
        if (confirm(msg)!=0) { //Y
        	$.ajax({
				url:'/bit_project/deleteCO.co',
				type: 'POST',
				data:{'comment_num' : $("#comment_num").attr("value")},
				dataType: "json",
				contentType: 'application/x-www-form-urlencoded; charset=utf-8',
				success: function(retVal) {
					if (retVal.res == "OK") {
						alert("댓글이 삭제되었습니다.");
						coList(totalData, dataPerPage, pageCount, currentPage);
					}
					else {
						alert("댓글 삭제 실패 !!");
					}

				},
				error:function(request,status,error){
			    		alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
				}
        	}); //ajax
        } else { //N
        	alert("취소되었습니다");
		}
	}
 	
/*   function answerList() {
	  $('.community_comments_view_container').empty();
	  
	  $.ajax({
		  url:'/bit_project/getCO.co',
			type: 'POST',
			data:{'board_num' : $("#board_num").attr("value")},
			dataType: "json",
			contentType: 'application/x-www-form-urlencoded; charset=utf-8',
			success: function(data) {
				
			},
			error:function(request,status,error) {
		        alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
		   }
	  });
	  
  } */
  
	//댓글 목록
	function coList(totalData, dataPerPage, pageCount, currentPage) {
		$('.community_comments_view').empty();
		alert("댓글리스트 ajax 들어옴 ==> dataPerpage" + dataPerPage + "totaldata " + totalData + "pageCount" + pageCount + "currentPage" + currentPage);
		
		totalData = <%=comment_count %>;
		$.ajax({
			url:'/bit_project/getCO.co',
			type: 'POST',
			data:{'board_num' : $("#board_num").attr("value"), "page" : currentPage},
			dataType: "json",
			async: false,
			contentType: 'application/x-www-form-urlencoded; charset=utf-8',
			success: function(data) {
				if(data.length!=0){ //댓글 존재할시
					 $.each(data, function(index, item) {
						var output = ' ';
						var reg_date = new Date(item.regist); 
	                		var date = date_format(reg_date);
	                		var nickname = "<%=nickname_co %>";
	                
	                	alert("댓글 뿌려주기!!");
	                if (item.nickname == nickname) { //로그인한사람과 댓글쓴사람이 같을 경우 수정 삭제 가능
						output += '<li class="comments_container" value="' + item.comment_num + '">';	 
	                		output += '<div class="community_comments_view_user">';
	                		output += '<img>';
	                		output += '</div>';
	                		output += '<div class="community_comments_view_container">';
	                		output += '<div class="community_comments_view_comments">';
	                		output += '<input type="hidden" id="comment_num" value="' + item.comment_num + ' ">';
	                		output += '<span class="community_mt_footer_users">' + item.nickname + '</span>';
	                		output += '<input type="text" id="' + item.comment_num + '" class="comment_form" readonly onfocus:"this.blur()"; value="' + item.content + '">';
	                		output += '</div>';
	                		output += '<div class="community_comments_view_actions">';
	                		output += '<span class="community_comments_view_time">' + date + '</span>';
	                		output += '<div class="community_comments_view_add">';
	                		output += '<button type="button" onclick="answer_form(' + item.comment_num + ')">' + "댓글달기" + '</button>';
	                		output += '</div>';
						output += '<div class="community_comments_view_modify" id="' + item.comment_num + '">';
						output += '<button type="button" onclick="comod_form(' + item.comment_num + ')">' + "수정" + '</button>';
						output += '<button type="button" onclick="codel_btn()">' + "삭제" + '</button></div>';
						output += '</div>';
						output += '</div>';
						output += '</li>';
						
						$('.community_comments_view').append(output);
	                }
	                else {
	                		output += '<li class="comments_container" value="' + item.comment_num + '">';
	                		output += '<div class="community_comments_view_user">';
	                		output += '<img>';
	                		output += '</div>';
	                		output += '<div class="community_comments_view_container">';
	                		output += '<div class="community_comments_view_comments">';
	                		output += '<input type="hidden" id="comment_num" value="' + item.comment_num + ' ">';
	                		output += '<span class="community_mt_footer_users">' + item.nickname + '</span>';
	                		output += '<input type="text" id="content" class="comment_form" readonly onfocus:"this.blur()"; value="' + item.content + '">';
	                		output += '</div>';
	                		output += '<div class="community_comments_view_actions">';
	                		output += '<span class="community_comments_view_time">' + date + '</span>';
	                		output += '<div class="community_comments_view_add">';
	                		output += '<button type="button" class="answer_btn" onclick="answer_form(' + item.comment_num + ')">' + "댓글달기" + '</button>' + '</div>';
	                		output += '</div>';
	                		output += '</div>';
	                		output += '</div>';
 						output += '</li>';
 						
 						$('.community_comments_view').append(output);
	                }
	                
	                answerList(item.comment_num);
				});
					 paging(totalData, dataPerPage, pageCount, currentPage);
					 
				} else { //댓글 없을때
					var outputnull = "<div>";
					outputnull += "<div style='text-align:center; width:950px; height: 50px; padding-top: 40px;'>등록된 댓글이 없습니다.</div>";
					outputnull += "</div>";
					$('.community_comments_view').append(outputnull);
				}
			},
			error:function(request,status,error){
		        alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
		       }
			}); //ajax
		}
  
  //페이징
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
          html += "<a href='javascript:coList(totalData, dataPerPage, pagecount, " + i + ")' id=" + i + ">" + i + "</a> ";
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
          coList(totalData, dataPerPage, pageCount, selectedPage);
          paging(totalData, dataPerPage, pageCount, selectedPage);// 페이징
      });
      
  }
  
  //대댓 목록
  function answerList($comment_num) {
	  /* $('.community_comments_view_container').empty(); */
	  var num = $comment_num;
	  
	  alert("댓글리스트에서 받아옴 : " + num);
	  
	  $.ajax({
			url:'/bit_project/getAnswer.co',
			type: 'POST',
			data:{'comment_num' : num},
			dataType: "json",
			async: false,
			contentType: 'application/x-www-form-urlencoded; charset=utf-8',
			success: function(data) {
		/* 		if(data.length!=0){ //댓글 존재할시 */
				$.each(data, function(index, item) {
				if(num == item.comment_num) {
					var answer = ' ';
					var reg_date = new Date(item.regist); 
            		var date = date_format(reg_date);
            		var nickname = "<%=nickname_co %>";
					/* alert(nickname + " : 세션 닉네임값 리댓");  */
					alert("리댓 뿌려주기!!");
	          		
					 if(item.nickname == nickname) {
						answer += '<li class="answer_container" value="' + item.comment_num + '">';	 
						answer += '<div class="community_answer_view_user">';
						answer += '<img>';
						answer += '</div>';
						answer += '<div class="community_answer_view_container">';
						answer += '<div class="community_answer_view_answer">';
						answer += '<input type="hidden" id="answer_num" value="' + item.answer_num + ' ">';
						answer += '<span class="community_mt_footer_users">' + item.nickname + '</span>';
						answer += '<input type="text" id="' + item.answer_num + '" class="answer_form" readonly onfocus:"this.blur()"; value="' + item.content + '">';
						answer += '</div>';
						answer += '<div class="community_answer_view_actions">';
						answer += '<span class="community_answer_view_time">' + date + '</span>';
						answer += '<div class="community_answer_view_modify" id="' + item.answer_num + '">';
						answer += '<button type="button" onclick="anmod_form(' + item.answer_num + ')">' + "수정" + '</button>';
						answer += '<button type="button" onclick="andel_btn(' + item.answer_num + ')">' + "삭제" + '</button></div>';
						answer += '</div>';
						answer += '</div>';
						answer += '</li>';
						
						$(".community_comments_view_container").append(answer);
					}
					else {
						answer += '<li class="answer_container" value="' + item.comment_num + '">';	 
						answer += '<div class="community_answer_view_user">';
						answer += '<img>';
						answer += '</div>';
						answer += '<div class="community_answer_view_container">';
						answer += '<div class="community_answer_view_answer">';
						answer += '<input type="hidden" id="answer_form" value="' + item.comment_num + ' ">';
						answer += '<span class="community_mt_footer_users">' + item.nickname + '</span>';
						answer += '<input type="text" id="' + item.comment_num + '" class="comment_form" readonly onfocus:"this.blur()"; value="' + item.content + '">';
						answer += '</div>';
						answer += '<div class="community_answer_view_actions">';
						answer += '<span class="community_answer_view_time">' + date + '</span>';
						answer += '</div>';
						answer += '</li>';
						
						$(".community_comments_view_container").append(answer);
					}
				}
				});
/* 				} else{
					var answern = ' ';
					answern += '<p>' + '없음' + '</p>';
					$(".community_comments_view_container").append(answern);
				} */
			},
			error:function(request,status,error){
		        alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
		    }
		}); //ajax
	  }
	
	//대댓 등록
	function answerwrite($comment_num) {
		var num = $comment_num;
		var params = $('form[class="' + num +'"]').serialize();
		/* var params = $("form." + num).serialize(); */ 
		alert(params);
		alert(num);
		
		$.ajax({
			url:'/bit_project/writeAnswer.co',
			type: 'POST',
			data: params,
			dataType: "json",
			contentType: 'application/x-www-form-urlencoded; charset=utf-8',
			success: function(retVal) {
				
				if (retVal.res == "OK") { //데이터 성공일때 이벤트 작성
					coList(totalData, dataPerPage, pageCount, currentPage);
					
					//초기화
					$('.community_answer_form_enter').val('');
				}
			
			},
			error:function(request,status,error){
		    		alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
		    }
		}) //ajax
	}
	
	//대댓 수정 폼
    function anmod_form($answer_num) {
		alert("대댓 수정 시작");
     	
     	var num = $answer_num;
     	alert(num);
     	
     	if (num == $('.answer_form').attr('id')) {
     		$('input[id="' + num + '"]').removeAttr("readonly");
     		$('input[id="' + num + '"]').css("background", "yellow");
     		$('div[id="' + num + '"]').html("<button type='button' onclick='anmod_btn()'>수정하기</button></div>");
     	}
	} 
	
    //대댓 수정
    function anmod_btn() {
    	alert($(".answer_form").val());
    	
       jQuery.ajax({
          url : '/bit_project/updateAnswer.co',
          type : 'POST',
          data : {'answer_num' : $("#answer_num").attr("value"), 'content' : $(".answer_form").val()},
          contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
          dataType : "json",
          success : function(retVal) {
             if(retVal.res == "OK") {
            	 alert("대댓 수정이 완료되었습니다");
            	 coList(totalData, dataPerPage, pageCount, currentPage);
             }
             else {
                alert("대댓 수정 실패")
             }
          },
          error:function() {
             alert("대댓 ajax 오류");
          }
       });
    }
	
	//대댓 삭제
	function andel_btn($answer_num) {
		var num = $answer_num;
		alert("삭제할 answer_num " + num);
		msg = "삭제하시겠습니까?";
        if (confirm(msg)!=0) { //Y
        	$.ajax({
				url:'/bit_project/deleteAnswer.co',
				type: 'POST',
				data:{'answer_num' : num},
				dataType: "json",
				contentType: 'application/x-www-form-urlencoded; charset=utf-8',
				success: function(retVal) {
					if (retVal.res == "OK") {
						alert("대댓글이 삭제되었습니다.");
						coList(totalData, dataPerPage, pageCount, currentPage);
					}
					else {
						alert("대댓글 삭제 실패 !!");
					}

				},
				error:function(request,status,error){
			    		alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
				}
        	}); //ajax
        } else { //N
        	alert("취소되었습니다");
		}
	}
	
/* 	
	//대댓 폼
	function answer_form($comment_num) {
		var num = $(comment_num);
		alert("대댓달기");
		
		$('form[class="' + num + '"]').css("display","block");

	}
	  */

	
	//session 없을시 로그인페이지로 이동(댓글 input)
	$(".community_comments_form_content").click(function() {
		var nickname_1 = <%=(String)session.getAttribute("nickname")%>;
		
		if(nickname_1 == null) {
			alert("로그인 후 이용해주세요");
			window.location.href = "login.me";	
			return false;
		   }
	});
	  
	//session 없을시 로그인페이지로 이동(대댓 input)
	$(".community_answer_form_comments").click(function() {
		var nickname_1 = <%=(String)session.getAttribute("nickname")%>;
		
		if(nickname_1 == null) {
			alert("로그인 후 이용해주세요");
			window.location.href = "login.me";	
			return false;
		   }
	});
	
	//input 엔터 막기
	$('input[type="text"]').keydown(function() {
 		if (event.keyCode === 13) {
    		event.preventDefault();
  		};
	});
	
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
	
</script>


</body>
</html>