	$("document").ready(function(){
//		$(".zz").text(category);
		var category = $(".zz").text(); //기본 게시판(자유게시판)
		
		$('#wrapper-dropdown').val("최신순");
		$("#search_form").val("");
		$('.gg').empty();
//		selectData(category);

		
		//찾기 input 엔터금지
		$('#search_form').keypress(function(event){
			if (event.which == 13) {
				
			var category = $(".zz").text(); 
	        var search_Data = $("#search_form").val();
	       
	        searchData(category, search_Data);
			}
		});

		
		var board = {};
		var lstCnt = 10;
		board.boardList = {
		        init : function(cmpnNo, lstCnt) {
		            var page = 1;
		            board.boardList.param.pageNumber = Number(page);
		            board.boardList.param.cmpnNo = cmpnNo;
		            board.boardList.param.pageSize = lstCnt;
		            board.boardList.data();
		            board.boardList.param.category = $(".zz").text();
		            board.boardList.param.option = option = $("#wrapper-dropdown option:selected").val();
		        },
		       data : function() {
		    	   alert("새로운 페이징하는중");
		            $.ajax({
		                url : '/bit_project/getCM.co', 
		                data : board.boardList.param,
		                success : function(result) {
		                    var boardList = result.boardList;
		                    if(boardList.length != 0){
		                        board.boardList.totalCount = boardList[0].totalCount; // 총 건수
		                    };
		                    drawPagination(lstCnt);
		                    var markup ="";    // mark 로직 작성
		                    $("#community_data").html(markup);
		                },
		                error : function() {
		                    alert('게시판 조회 중 오류가 발생했습니다.');
		                }
		            });
		        },
		        param : {
		            pageNumber : 1,
		            pageSize : lstCnt
		        },
		        totalCount : 0
		    };
		
		
		
		
	}); //document.ready     
	
	//페이징을 설정하고 페이징 영역에 화면에 그리는 함수
	function drawPagination(lstCnt){
	    $("#paginate").pagination({
	       items: board.boardList.totalCount,
	       currentPage : board.boardList.param.pageNumber,
	       itemsOnPage: lstCnt, // 설정 안할 경우 10
	       displayedPages : lstCnt, // 설정 안할 경우 10
	       selectOnClick : false, // 페이징 버튼을 눌렀을 때 자동으로 페이징을 다시 그릴지 여부 (기본값은 true)
	       onPageClick: function(currentPage){ // 페이징 버튼을 눌렀을 때 이벤트 바인딩
	           searchBoardListPaging(currentPage); // 페이징 버튼을 눌렀을 때 다시 비동기로 데이터를 가져와 화면과 페이징을 그립니다.
	       }
	   });
	}
	 
	// 페이징 번호 눌렀을때 함수
	function searchBoardListPaging (page) {
	    board.boardList.param.pageNumber = Number(page);
	    board.boardList.data();
	    drawPagination(lstCnt);
	}

	
	
	
	//태그 제거
	function removeTag( str ) {
		return str.replace(/(<([^>]+)>)/gi, "");
	}
	
		//필터
		function button_click() {
			var category = $(".zz").text(); 
			
			selectData(category);
		}

		
		
		
		
//		
//        //리스트
//        function selectData(category) {
////        	var category = $(".zz").text(); 
//        	alert("selectData category : " + category);
//        	var option = $("#wrapper-dropdown option:selected").val(); //필터 값 가져오기
//        	
//        		$.ajax({
//   				 url : '/bit_project/getCM.co', 
//   	             type : "post", 
//   	             data : {"category" : category, "option" : option},
//   	             dataType: 'json',
//   	             async: false,
//   	             success : function(data){  //성공
//   	            		$('#community_data').empty();
//   	                 $('.zz').text(category); //게시판이름 바꾸기
//   	                 	
//   						if(data.length != 0) { //게시글 존재
//   	 					 	$.each(data, function(index, item) {
//   	 					 	var output = ' ';
//   							
//   							var reg_date = new Date(item.regist); 
//   			                var date = date_format(reg_date);  //날짜 format
//			        			                		
//   			                if (item.category != "육아사진") { //글게시판
//   			                	
//       							output += '<div id="community_container_mt">';
//       							output += '<div class="underline"></div>';
//       							output += '<div class="community_mt_title">';
//       							output += '<a class="community_mt_link" href="community_detail.co?board_num=' + item.board_num  + '">';
//       							
//       							if(item.img != "null") {
//       							output += '<div class="community_mt_img">';
//       							output += '<img src="' + item.img + '" class="com_img1">';
//       							output += '</div>';
//       							}else {
//   								output += '<div class="community_mt_img">';
//       							output += '</div>';
//       							}
//       							
//       							output += '<h2 class="community_name">' + item.board_name + '</h2>';
//       							output += '<p class="community_mt_mt">' + removeTag(item.content) + '</p>';
//       							output += '<footer class="community_mt_footer">';
//       							output += '<a class="community_mt_footer_user" href="community_user.co?nickname=' + item.nickname + '">';
//       							output += '<img src="' + item.profile + '">';
//       							output += '<span class="community_mt_footer_users">' +  item.nickname + '</span>';
//       							output += '</a>';
//       							output += '<span class="community_mt_footer_caption">';
//       							output += '<span class="community_mt_footer_time">' + date + '</span>';
//       							output += '<span class="community_mt_footer_comments">' + "댓글 " + item.co_count + ' </span>';
//       							output += '<span class="community_mt_footer_views">' + "조회수 " + item.count + ' </span>';
//       							output += '</span>';
//       							output += '</footer>';
//       							output += '</a>';
//       							output += '</div><br>';
//       							output += '</div>';
//       							
//       							$('#community_data').append(output);
//   			                }else { //사진게시판
//   			                alert("사진 출력!!");
//	                				output += '<div id="community_container_mi">';
//       							output += '<div class="community_mi_title">';
//       							output += '<a class="community_mi_link" href="community_detail.co?board_num=' + item.board_num  + ' "></a>';
//       							output += '<div class="community_mi_img">';
//       							output += '<img src="' + item.img + '" class="com_img2">';
//       							output += '</div>';
//       							output += '<h2 class="community_name">' + item.board_name + '</h2>';
//       							output += '<address class="community_mi_writer">';
//       							output += '<a class="community_mi_writer_user" href="community_user.co?nickname=' + item.nickname + '">'; //글쓴이 ?? 검색
//       							output += '<img src="' + item.profile + '">';
//       							output += '<span class="community_mt_footer_users">' + item.nickname + ' </span>';
//       							output += '</a>';
//       							output += '</address>';
//       							output += '<footer class="community_mi_footer">';
//       							output += '<span class="community_mi_footer_caption">';
//       							output += '<span class="community_mi_footer_time">' + date  + ' </span>';
//       							output += '<span class="community_mi_footer_comments">' + "댓글 " + item.co_count + ' </span>';
//       							output += '<span class="community_mi_footer_views">' + "조회수 " + item.count + ' </span>';
//       							output += '</span>';
//       							output += '</footer>';
//       							output += '</div>';
//	                				output += '</div>';
//	                				
//	                				$('#community_data').append(output);
//   			                }
//   						}); //each
// 			            
//   						}
//   						else { //게시글 존재하지않을때
//   							var outputnull = "<div class='community_ncontainer'>";
//   							outputnull += "<div>등록된 게시글이 없습니다.</div>";
//   							outputnull += "</div>";
//   							$('#community_data').append(outputnull);
//   						}
//   					},
//   	              error : function(data){
//   	            	 alert('error');
//   	              }//error
//   			}); //ajax
//   			
//	}
//        
      //검색
        function searchData(category, search_Data) {
        	var category = $(".zz").text(); //카테고리
			var search_Data = $("#search_form").val('');

	        $.ajax({
	            url : '/bit_project/getCMsearch.co', 
   	            type : "post", 
   	            data : {"search_Data" : search_Data, "category" : category},
   	            dataType: 'json',
   	            async: false,
   	        	cache : false,
	            success : function(data) {
	            		$('#community_data').empty();
	            		
	            		if(data.length != 0) { //게시글 존재
	 					 $.each(data, function(index, item) {
	 						 
	 						$('.gg').text("검색 결과 " + item.cmsearch_count + " 건"); //검색 결과 안내
	 						 
	 						var output = ' ';
							var reg_date = new Date(item.regist); 
			                var date = date_format(reg_date);  //날짜 format
			                alert(item.board_num + " / " + item.board_name + " / " + item.content + " / " + item.nickname + " / " + date + " / " + item.co_count + " / " + item.count);
			                
			                if (item.category != "육아사진") { //글게시판
			                	
   							output += '<div id="community_container_mt">';
   							output += '<div class="underline"></div>';
   							output += '<div class="community_mt_title">';
   							output += '<a class="community_mt_link" href="community_detail.co?board_num=' + item.board_num  + ' ">';
   							
   							if(item.img != "null") {
       							output += '<div class="community_mt_img">';
       							output += '<img src="' + item.img + '" class="com_img1">';
       							output += '</div>';
       							}else {
   								output += '<div class="community_mt_img">';
       							output += '</div>';
       							}
   							
   							output += '<h2 class="community_name">' + item.board_name + '</h2>';
   							output += '<p class="community_mt_mt">' + removeTag(item.content) + '</p>';
   							output += '<footer class="community_mt_footer">';
   							output += '<a class="community_mt_footer_user" href="community_user.co?nickname=' + item.nickname + ' ">';
   							output += '<img src="' + item.profile + '">';
   							output += '<span class="community_mt_footer_users">' +  item.nickname + ' </span>';
   							output += '</a>';
   							output += '<span class="community_mt_footer_caption">';
   							output += '<span class="community_mt_footer_time">' + date + ' </span>';
   							output += '<span class="community_mt_footer_comments">' + "댓글 " + item.co_count + ' </span>';
   							output += '<span class="community_mt_footer_views">' + "조회수 " + item.count + ' </span>';
   							output += '</span>';
   							output += '</footer>';
   							output += '</a>';
   							output += '</div><br>';
   							output += '</div>';
   							
   							$('#community_data').append(output);
			                }else { //사진게시판
			                	
			                	output += '<div id="community_container_mi">';
   							output += '<div class="community_mi_title">';
   							output += '<a class="community_mi_link" href="community_detail.co?board_num=' + item.board_num  + '"></a>';
   							output += '<div class="community_mi_img">';
   							output += '<img src="' + item.img + '" class="com_img2">';
   							output += '</div>';
   							output += '<h2 class="community_name">' + item.board_name + '</h2>';
   							output += '<address class="community_mi_writer">';
   							output += '<a class="community_mi_writer_user href="community_user.co?nickname=' + item.nickname + '">'; //글쓴이 ?? 검색
   							output += '<img src="' + item.profile + '">';
   							output += '<span class="community_mt_footer_users">' + item.nickname + ' </span>';
   							output += '</a>';
   							output += '</address>';
   							output += '<footer class="community_mi_footer">';
   							output += '<span class="community_mi_footer_caption">';
   							output += '<span class="community_mi_footer_time">' + date  + ' </span>';
   							output += '<span class="community_mi_footer_comments">' + "댓글 " + item.co_count + ' </span>';
   							output += '<span class="community_mi_footer_views">' + "조회수 " + item.count + ' </span>';
   							output += '</span>';
   							output += '</footer>';
   							output += '</div>';
                				output += '</div>';
                				
                				$('#community_data').append(output);
			                	}
   						}); 
   	 					alert("total : " + totalData);
			            
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

      //session 없을시 로그인페이지로 이동(글쓰기 버튼)
    	function write_btn(){
    		
    		var email = "<%=email_co%>";
    		alert(email + "이메일");
    		if(email != null) {
    			window.location.href = "co_writeForm.co";
    		}else{
    			alert("로그인 후 이용해주세요");
    			window.location.href = "login.me";	
    			return false;
    			
    		}
    	}
    	
		 //날짜 format
        function date_format(format) {
            var year1 = format.getFullYear().toString();
            var year = year1.substr(2,4);
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
            return year + "-" + month + "-" + date + " " + hour +":" + min;
         }
		 
	
	