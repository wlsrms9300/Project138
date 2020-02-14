$(document).ready(function(){	
    $('.member').on('click', function(){
        var submenu = $(this).next("ul");
        var submenu2 = $('#sub_list11');
        if(submenu.is(":visible") || submenu2.is(":visible")) {
            $('.o1').css('color', 'black');
            $('.o1').text('▼');
            if($(window).width() > 480) {
            	submenu.slideUp();
            } else {
            	$('#noId2').attr('id', 'num2');
            	$('#noId4').attr('id', 'num4');
            	$('#noIf5').attr('id', 'num5');
            	$('.sub_list1_menu:nth-child(1)').attr('id', 'noId2');
            	$('.sub_list1_menu:nth-child(2)').attr('id', 'noId4');
            	$('.sub_list1_menu:nth-child(3)').attr('id', 'noId5');
            	submenu2.slideUp();
        	}
        } else {
            $('.o1').css('color', 'rgb(231, 60, 63)');
            $('.o1').text('▲');
            if($(window).width() > 480) {
            	submenu.slideDown();
            } else {
            	$('#num2').attr('id', 'noId2');
            	$('#num4').attr('id', 'noId4');
            	$('#num5').attr('id', 'noId5');
            	$('.sub_list11_menu:nth-child(1)').attr('id', 'num2');
            	$('.sub_list11_menu:nth-child(2)').attr('id', 'num4');
            	$('.sub_list11_menu:nth-child(3)').attr('id', 'num5');
            	submenu2.slideDown();
            }
        }
    });

    $('.activity').on('click', function(){
        var submenu = $(this).next("ul");
        var submenu2 = $('#sub_list22');
        if(submenu.is(":visible") || submenu2.is(":visible")) {
            $('.o2').css('color', 'black');
            $('.o2').text('▼');
            if($(window).width() > 480) {
            	submenu.slideUp();
            } else {
            	submenu2.slideUp();
        	}
        } else {
            $('.o2').css('color', 'rgb(231, 60, 63)');
            $('.o2').text('▲');
            if($(window).width() > 480) {
            	submenu.slideDown();
            } else {
            	submenu2.slideDown();
            }
        }
    });
    /*
    $('#board_history').click(function() {
    	var history = $('.history_drop');
    	if(history.is(":visible")) {
    		$('.board_history_btn > b').text('+');
    		history.slideUp();
    	} else {
    		$('.board_history_btn > b').text('-');
    		history.slideDown();
    	}
    });
	*/
    /* 메뉴버튼 이벤트 시작 */
    $('#num0').click(function(){
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        if(menu0.css("display") == "none") {
            $('#num0').css('color', '#EA7475');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m1 > b').css('color', 'black');
            list.hide();
            menu0.show();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
            menu6.hide();
        }
    });

    $('#num1').click(function(){
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        if(menu1.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', '#EA7475');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m1 > b').css('color', 'black');
            list.hide();
            menu0.hide();
            menu1.show();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
            menu6.hide();
        }
    });

    $('#num2').click(function(){
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        if(menu2.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', '#EA7475');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m1 > b').css('color', 'black');
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.show();
            menu3.hide();
            menu4.hide();
            menu5.hide();
            menu6.hide();
        }
    });
    

    
    $('#num3').click(function(){
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        if(menu3.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', '#EA7475');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m1 > b').css('color', 'black');
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.show();
            menu4.hide();
            menu5.hide();
            menu6.hide();
        }
        $('.share').empty();
        $.ajax({
            url: '/bit_project/mypage_share.my',
            type: 'GET',
            dataType: 'json',
            data:{"email" : myemail},
            async:false,
            success: function (data) {
                    var sl = "";
                    if(data!=null){
                    $.each(data, function (index, item) {
                    	if(index==0){
                    		sl += '<h2>쉐어</h2>';
                            sl += '<div class="account">';
                            sl += '<div class="account_title">';
                            sl += '<h3>계좌번호</h3>';
                            sl += '</div>';
                            sl += '<div class="account_detail">';
                            sl += '<p>'+item.bank+'&nbsp;&nbsp;'+item.account+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+item.name+'</p>';
                            sl += '</div>';
                            sl += '</div>';
                            $('.share').append(sl);
                            var sl_sub1 = "";
                            sl_sub1 = '<div class="application">';
                            sl_sub1 += '<h3>신청 내역</h3>';
                            sl_sub1 += '<table>';
                            sl_sub1 += '<tr class="application_line">';
                            sl_sub1 += '<th>신청일</th>';
                            sl_sub1 += '<th>상품명</th>';
                            sl_sub1 += '<th>상태</th>';
                            sl_sub1 += '</tr>';
                            sl_sub1 += '</table>';
                            $('.share').append(sl_sub1);
                    	}
                        //$('.account_title').append(sl_sub1);
                        //$('.account_detail').append(sl_sub2);
                        var sl_sub2 = "";
                        sl_sub2 += '<tr class="application_line">';
                        var date = new Date(item.consignment_start_date);
                        date = date_to_str(date);
                        sl_sub2 += '<td>'+date+'</td>';
                        sl_sub2 += '<td>'+item.product_name+'</td>';
                        if(item.share_state==0){
                        	sl_sub2 += '<td>쉐어 대기</td>';	
                        }else if(item.share_state==1) {
                        	sl_sub2 += '<td>쉐어 수락</td>';
                        }else if(item.share_state==2) {
                        	sl_sub2 += '<td>쉐어 거절</td>';
                        }else {
                        	sl_sub2 += '<td>쉐어 승인</td>';
                        }
                        sl_sub2 += '</tr>';

                        $('.application table').append(sl_sub2);
                      
                    })
                    } else {
                    	alert('데이터가 없습니다.')
                    }
            },
            error: function () {
                alert("마이페이지 쉐어 신청 리스트 출력 실패");
            }
        });
        
        $.ajax({
            url: '/bit_project/mypage_share2.my',
            type: 'GET',
            dataType: 'json',
            data:{"email" : myemail},
            async:false,
            success: function (data) {
                    var sl = "";
                    if(data!=null){
                    $.each(data, function (index, item) {
                    	if(index==0){
                    	  var sh = "";
                          sh += '<div class="share_history">';
                          sh += '<h3>쉐어 내역</h3>';
                          sh += '<table>';
                          sh += '<tr class="share_line">';
                          sh += '<th>기간</th>';
                          sh += '<th>상품명</th>';
                          sh += '<th>총수익</th>';
                          sh += '<th>상태(대여 : 총수량)</th>';
                          sh += '<th>정산</th>';
                          sh += '</tr>';
                          sh += '</table>';
                          sh += '</div>';
                          $('.share').append(sh);
                    	}
                    	//나머지 실제 데이터 출력 부분
                    	var settle_sNum = "'" + item.share_num + "'";
                    	var date1 = new Date(item.consignment_start_date);
                    	date1 = date_to_str(date1);
                    	var date2 = new Date(item.consignment_end_date);
                    	date2 = date_to_str(date2);
                    	var sh2 ="";
                    	sh2 += '<tr class="share_line">';
                    	sh2 += '<td>'+date1+'~'+date2+'</td>';
                    	sh2 += '<td>'+item.product_name+'</td>';
                    	sh2 += '<td>'+item.total_accumulated_fund+'</td>';
                    	sh2 += '<td>'+item.share_amount+'/'+item.total_amount+'</td>';
                    	sh2 += '<td><input type="button" value="정산" class="share_btn" onclick="settlement('+settle_sNum+');"></td>';
                    	sh2 += '</tr>';
                    	$('.share_history table').append(sh2);
                    	
                    })
                    } else {
                    	alert('데이터가 없습니다.')
                    }
            },
            error: function () {
                alert("마이페이지 쉐어 신청 리스트 출력 실패");
            }
        });
        
        
    });

    $('#num4').click(function(){
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        if(menu4.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', '#EA7475');
            $('#num5 > b').css('color', 'black');
            $('#m1 > b').css('color', 'black');
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.show();
            menu5.hide();
            menu6.hide();
        }
    });


    $('#num5').click(function(){
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        if(menu5.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', '#EA7475');
            $('#m1 > b').css('color', 'black');
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.show();
            menu6.hide();
        }
    });
    
    /* 여기부터 시작 */ /* 자유게시판 */
    $('#m1').click(function(){
    	$.fn.dataTable.ext.errMode='none'; //warning alert 출력 막기. none 대신 throw 넣으면 브라우저의 console 출력.
    	//$('#foo-table-output').dataTable().fnDestroy();
    	var check = true; // true면 데이터테이블 실행  false면 x
    	var text = $('#m1 > b').text();
    	
    	$('#myboard-title').text(text);
    	
    	/* 테이블 초기화 */
    	if ($.fn.DataTable.isDataTable("#foo-table")) {
    		  $('#foo-table').DataTable().clear().destroy();
    		  $('#foo-table-output').empty();
    	}
    	$('#foo-table-thead').empty();
    	var thead = '';
		 thead += '<tr>';
		 thead += '<th>등록일</th>';
		 thead += '<th>글제목</th>';
		 thead += '<th>조회수</th>';
		 thead += '<th>스크랩</th>';
		 thead += '</tr>';
		 $('#foo-table-thead').append(thead);
    	
    	$.ajax({
    		url:'/bit_project/getboard1.my',
    		type:'POST',
    		data: {'email' : email, 'category' : text},
    		dataType: 'json',
    		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		async: false, //ajax 옵션, ajax실행이 끝난후 함수가 실행된다
    		success: function(data) {
    			 
    			$.each(data, function(index, item) {
    				var date1 = new Date(item.regist);
    				var regist = date_format(date1);
    				var output = '';
    				output += '<tr>';
    				output += '<td>'+ regist +'</td>';
    				output += '<td>'+ item.board_name +'</td>';
    				output += '<td>'+ item.count +'</td>';
    				output += '<td>'+ item.scrap_count +'</td>';
    				output += '</tr>';
    				console.log("output:" + output);
    				$('#foo-table-output').prepend(output);

    			});
    		},
    		error:function() {
    		check = false;	
    		}
    	});
    	if(check == true) { //성공하면 테이블 실행
			$('#foo-table').DataTable({
				language : lang_kor,
				order: [ [ 0, "desc" ] ]
			});
		}   		
    	   
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        menu6.css("display", "none");
        if(menu6.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m1 > b').css('color', '#EA7475');
            $('#m2 > b').css('color', 'black');
            $('#m3 > b').css('color', 'black');
            $('#m4 > b').css('color', 'black');
            $('#m5 > b').css('color', 'black');
            $('#m6 > b').css('color', 'black');
            $('#m7 > b').css('color', 'black');
            $('#m8 > b').css('color', 'black');
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
            menu6.show();
        }
    });
    
    /* 육아사진 */
    $('#m2').click(function(){
    	$.fn.dataTable.ext.errMode='none'; //warning alert 출력 막기.
    	var check = true; // true면 데이터테이블 실행  false면 x
    	var text = $('#m2 > b').text();
    	
    	$('#myboard-title').text(text);
    	/* 테이블 초기화 */
    	if ($.fn.DataTable.isDataTable("#foo-table")) {
    		  $('#foo-table').DataTable().clear().destroy();
    		  $('#foo-table-output').empty();
    	}
    	
    	$('#foo-table-thead').empty();
    	var thead = '';
		 thead += '<tr>';
		 thead += '<th>등록일</th>';
		 thead += '<th>글제목</th>';
		 thead += '<th>조회수</th>';
		 thead += '<th>스크랩</th>';
		 thead += '</tr>';
		 $('#foo-table-thead').append(thead);
    	
    
    	$.ajax({
    		url:'/bit_project/getboard2.my',
    		type:'POST',
    		data: {'email' : email, 'category' : text},
    		dataType: 'json',
    		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		async: false, //ajax 옵션, ajax실행이 끝난후 함수가 실행된다
    		success: function(data) {
    			$.each(data, function(index, item) {
    				var date1 = new Date(item.regist);
    				var regist = date_format(date1);
    				var output = '';
    				output += '<tr>';
    				output += '<td>'+ regist +'</td>';
    				output += '<td>'+ item.board_name +'</td>';
    				output += '<td>'+ item.count +'</td>';
    				output += '<td>'+ item.scrap_count +'</td>';
    				output += '</tr>';
    				console.log("output:" + output);
    				$('#foo-table-output').prepend(output);

    			});
    			
    		},
    		error:function() {
    			check = false;	
    		}
    	});
    	if(check == true) { //성공하면 테이블 실행
			$('#foo-table').DataTable({
				language : lang_kor,
				order: [ [ 0, "desc" ] ]
			});
		}  
    	
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        menu6.css("display", "none");
        if(menu6.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m1 > b').css('color', 'black');
            $('#m2 > b').css('color', '#EA7475');
            $('#m3 > b').css('color', 'black');
            $('#m4 > b').css('color', 'black');
            $('#m5 > b').css('color', 'black');
            $('#m6 > b').css('color', 'black');
            $('#m7 > b').css('color', 'black');
            $('#m8 > b').css('color', 'black');
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
            menu6.show();
        }
    });
    
    /* 정보공유(팁) */
    $('#m3').click(function(){
    	$.fn.dataTable.ext.errMode='none'; //warning alert 출력 막기.
    	var check = true; // true면 데이터테이블 실행  false면 x
    	var text = $('#m3 > b').text();
    	$('#myboard-title').text(text);
    	/* 테이블 초기화 */
    	if ($.fn.DataTable.isDataTable("#foo-table")) {
    		  $('#foo-table').DataTable().clear().destroy();
    		  $('#foo-table-output').empty();
    	}
    	$('#foo-table-thead').empty();
    	var thead = '';
		 thead += '<tr>';
		 thead += '<th>등록일</th>';
		 thead += '<th>글제목</th>';
		 thead += '<th>조회수</th>';
		 thead += '<th>스크랩</th>';
		 thead += '</tr>';
		 $('#foo-table-thead').append(thead);
    	
    	$.ajax({
    		url:'/bit_project/getboard3.my',
    		type:'POST',
    		data: {'email' : email, 'category' : text},
    		dataType: 'json',
    		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		async: false, //ajax 옵션, ajax실행이 끝난후 함수가 실행된다
    		success: function(data) {
    			$.each(data, function(index, item) {
    				var date1 = new Date(item.regist);
    				var regist = date_format(date1);
    				var output = '';
    				output += '<tr>';
    				output += '<td>'+ regist +'</td>';
    				output += '<td>'+ item.board_name +'</td>';
    				output += '<td>'+ item.count +'</td>';
    				output += '<td>'+ item.scrap_count +'</td>';
    				output += '</tr>';
    				console.log("output:" + output);
    				$('#foo-table-output').prepend(output);

    			});
    		},
    		error:function() {
    			check = false;	
    		}
    	});
    	
    	if(check == true) { //성공하면 테이블 실행
			$('#foo-table').DataTable({
				language : lang_kor,
				order: [ [ 0, "desc" ] ]
			});
		}   
    	
    	
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        menu6.css("display", "none");
        if(menu6.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m1 > b').css('color', 'black');
            $('#m2 > b').css('color', 'black');
            $('#m3 > b').css('color', '#EA7475');
            $('#m4 > b').css('color', 'black');
            $('#m5 > b').css('color', 'black');
            $('#m6 > b').css('color', 'black');
            $('#m7 > b').css('color', 'black');
            $('#m8 > b').css('color', 'black');
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
            menu6.show();
        }
    });
    
    /* 공구게시판 */
    $('#m4').click(function(){
    	$.fn.dataTable.ext.errMode='none'; 
    	var check = true;
    	var text = $('#m4 > b').text();
    	$('#myboard-title').text(text);
    	/* 테이블 초기화 */
    	if ($.fn.DataTable.isDataTable("#foo-table")) {
    		  $('#foo-table').DataTable().clear().destroy();
    		  $('#foo-table-output').empty();
    	}
    	$('#foo-table-thead').empty();
    	var thead = '';
		 thead += '<tr>';
		 thead += '<th>등록일</th>';
		 thead += '<th>글제목</th>';
		 thead += '<th>조회수</th>';
		 thead += '<th>스크랩</th>';
		 thead += '</tr>';
		 $('#foo-table-thead').append(thead);
    	
    	$.ajax({
    		url:'/bit_project/getboard4.my',
    		type:'POST',
    		data: {'email' : email, 'category' : text},
    		dataType: 'json',
    		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		async: false,
    		success: function(data) {
    			$.each(data, function(index, item) {
    				var date1 = new Date(item.regist);
    				var regist = date_format(date1);
    				var output = '';
    				output += '<tr>';
    				output += '<td>'+ regist +'</td>';
    				output += '<td>'+ item.board_name +'</td>';
    				output += '<td>'+ item.count +'</td>';
    				output += '<td>'+ item.scrap_count +'</td>';
    				output += '</tr>';
    				console.log("output:" + output);
    				$('#foo-table-output').prepend(output);

    			});
    			
    		},
    		error:function() {
    			check = false;
    		}
    	});
    	if(check == true) { //성공하면 테이블 실행
			$('#foo-table').DataTable({
				language : lang_kor,
				order: [ [ 0, "desc" ] ]
			});
		}  
    	
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        menu6.css("display", "none");
        if(menu6.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m1 > b').css('color', 'black');
            $('#m2 > b').css('color', 'black');
            $('#m3 > b').css('color', 'black');
            $('#m4 > b').css('color', '#EA7475');
            $('#m5 > b').css('color', 'black');
            $('#m6 > b').css('color', 'black');
            $('#m7 > b').css('color', 'black');
            $('#m8 > b').css('color', 'black');
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
            menu6.show();
        }
    });
    
    /* 육아관련질문 */
    $('#m5').click(function(){
    	$.fn.dataTable.ext.errMode='none';
    	var check = true;
    	var text = $('#m5 > b').text();
    	$('#myboard-title').text(text);
    	/* 테이블 초기화 */
    	if ($.fn.DataTable.isDataTable("#foo-table")) {
    		  $('#foo-table').DataTable().clear().destroy();
    		  $('#foo-table-output').empty();
    	}
    	$('#foo-table-thead').empty();
    	var thead = '';
		 thead += '<tr>';
		 thead += '<th>등록일</th>';
		 thead += '<th>글제목</th>';
		 thead += '<th>조회수</th>';
		 thead += '<th>스크랩</th>';
		 thead += '</tr>';
		 $('#foo-table-thead').append(thead);
    	
    	$.ajax({
    		url:'/bit_project/getboard5.my',
    		type:'POST',
    		data: {'email' : email, 'category' : text},
    		dataType: 'json',
    		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		async: false,
    		success: function(data) {
    			$.each(data, function(index, item) {
    				var date1 = new Date(item.regist);
    				var regist = date_format(date1);
    				var output = '';
    				output += '<tr>';
    				output += '<td>'+ regist +'</td>';
    				output += '<td>'+ item.board_name +'</td>';
    				output += '<td>'+ item.count +'</td>';
    				output += '<td>'+ item.scrap_count +'</td>';
    				output += '</tr>';
    				console.log("output:" + output);
    				$('#foo-table-output').prepend(output);

    			});
    		},
    		error:function() {
    			check = false;
    		}
    	});
    	if(check == true) { //성공하면 테이블 실행
			$('#foo-table').DataTable({
				language : lang_kor,
				order: [ [ 0, "desc" ] ]
			});
		}   
    	
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        menu6.css("display", "none");
        if(menu6.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m1 > b').css('color', 'black');
            $('#m2 > b').css('color', 'black');
            $('#m3 > b').css('color', 'black');
            $('#m4 > b').css('color', 'black');
            $('#m5 > b').css('color', '#EA7475');
            $('#m6 > b').css('color', 'black');
            $('#m7 > b').css('color', 'black');
            $('#m8 > b').css('color', 'black');
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
            menu6.show();
        }
    });
    
    /* 이슈.토론 */
    $('#m6').click(function(){
    	$.fn.dataTable.ext.errMode='none';
    	var check = true;
    	var text = $('#m6 > b').text();
    	$('#myboard-title').text(text);
    	/* 테이블 초기화 */
    	if ($.fn.DataTable.isDataTable("#foo-table")) {
    		  $('#foo-table').DataTable().clear().destroy();
    		  $('#foo-table-output').empty();
    	}
    	$('#foo-table-thead').empty();
    	var thead = '';
		 thead += '<tr>';
		 thead += '<th>등록일</th>';
		 thead += '<th>글제목</th>';
		 thead += '<th>조회수</th>';
		 thead += '<th>스크랩</th>';
		 thead += '</tr>';
		 $('#foo-table-thead').append(thead);
    	
    	$.ajax({
    		url:'/bit_project/getboard6.my',
    		type:'POST',
    		data: {'email' : email, 'category' : text},
    		dataType: 'json',
    		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		async: false,
    		success: function(data) {
    			$.each(data, function(index, item) {
    				var date1 = new Date(item.regist);
    				var regist = date_format(date1);
    				var output = '';
    				output += '<tr>';
    				output += '<td>'+ regist +'</td>';
    				output += '<td>'+ item.board_name +'</td>';
    				output += '<td>'+ item.count +'</td>';
    				output += '<td>'+ item.scrap_count +'</td>';
    				output += '</tr>';
    				console.log("output:" + output);
    				$('#foo-table-output').prepend(output);

    			});
    		},
    		error:function() {
    			check = false;
    		}
    	});
    	if(check == true) { //성공하면 테이블 실행
			$('#foo-table').DataTable({
				language : lang_kor,
				order: [ [ 0, "desc" ] ]
			});
		}  
    	
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        menu6.css("display", "none");
        if(menu6.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m1 > b').css('color', 'black');
            $('#m2 > b').css('color', 'black');
            $('#m3 > b').css('color', 'black');
            $('#m4 > b').css('color', 'black');
            $('#m5 > b').css('color', 'black');
            $('#m6 > b').css('color', '#EA7475');
            $('#m7 > b').css('color', 'black');
            $('#m8 > b').css('color', 'black');
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
            menu6.show();
        }
    });
    /* 댓글 */
    $('#m7').click(function(){
    	$.fn.dataTable.ext.errMode='none';
    	var check = true;
    	var text = $('#m7 > b').text();
    	$('#myboard-title').text(text);
    	/* 테이블 초기화 */
    	if ($.fn.DataTable.isDataTable("#foo-table")) {
    		  $('#foo-table').DataTable().clear().destroy();
    		  $('#foo-table-output').empty();
    	}
    	$('#foo-table-thead').empty();
    	var thead = '';
		 thead += '<tr>';
		 thead += '<th>등록일</th>';
		 thead += '<th>댓글 내용</th>';
		 thead += '</tr>';
		 $('#foo-table-thead').append(thead);
    	
    	$.ajax({
    		url:'/bit_project/getboard7.my',
    		type:'POST',
    		data: {'email' : email},
    		dataType: 'json',
    		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		async: false,
    		success: function(data) {
    			$.each(data, function(index, item) {
    				var date1 = new Date(item.regist);
    				var regist = date_format(date1);
    				var output = '';
    				output += '<tr>';
    				output += '<td>'+ regist +'</td>';
    				output += '<td>'+ item.content +'</td>';
    				output += '</tr>';
    				console.log("output:" + output);
    				$('#foo-table-output').prepend(output);

    			});
    			
    		},
    		error:function() {
    			check = false;
    		}
    	});
    	if(check == true) { //성공하면 테이블 실행
			$('#foo-table').DataTable({
				language : lang_kor,
				order: [ [ 0, "desc" ] ]
			});
		} 
    	
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        menu6.css("display", "none");
        if(menu6.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m1 > b').css('color', 'black');
            $('#m2 > b').css('color', 'black');
            $('#m3 > b').css('color', 'black');
            $('#m4 > b').css('color', 'black');
            $('#m5 > b').css('color', 'black');
            $('#m6 > b').css('color', 'black');
            $('#m7 > b').css('color', '#EA7475');
            $('#m8 > b').css('color', 'black');
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
            menu6.show();
        }
    });
    
    /* 후기 */
    $('#m8').click(function(){
    	$.fn.dataTable.ext.errMode='none';
    	var check = true;
    	var text = $('#m8 > b').text();
    	$('#myboard-title').text(text);
    	/* 테이블 초기화 */
    	if ($.fn.DataTable.isDataTable("#foo-table")) {
    		  $('#foo-table').DataTable().clear().destroy();
    		  $('#foo-table-output').empty();
    	}
    	$('#foo-table-thead').empty();
    	var thead = '';
		 thead += '<tr>';
		 thead += '<th>등록일</th>';
		 thead += '<th>후기</th>';
		 thead += '</tr>';
		 $('#foo-table-thead').append(thead);
   	
    	
    	$.ajax({
    		url:'/bit_project/getboard8.my',
    		type:'POST',
    		data: {'email' : email},
    		dataType: 'json',
    		async: false, 
    		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		success: function(data) {
    			$.each(data, function(index, item) {
    				var date1 = new Date(item.regist);
    				var regist = date_format(date1);
    				var output = '';
    				output += '<tr>';
    				output += '<td>'+ regist +'</td>';
    				output += '<td>'+ item.content +'</td>';
    				output += '</tr>';
    				console.log("output:" + output);
    				$('#foo-table-output').prepend(output);

    			});
    		},
    		error:function() {
    			check = false;
    		}
    	});
    	
    	if(check == true) { //성공하면 테이블 실행
			$('#foo-table').DataTable({
				language : lang_kor,
				order: [ [ 0, "desc" ] ]
			});
		}  
    	
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        menu6.css("display", "none");
        if(menu6.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m1 > b').css('color', 'black');
            $('#m2 > b').css('color', 'black');
            $('#m3 > b').css('color', 'black');
            $('#m4 > b').css('color', 'black');
            $('#m5 > b').css('color', 'black');
            $('#m6 > b').css('color', 'black');
            $('#m7 > b').css('color', 'black');
            $('#m8 > b').css('color', '#EA7475');
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
            menu6.show();
        }
    });
    
    
    
    /* 모바일 메뉴 이벤트 */
    /* 자유게시판 */
    $('#m11').click(function(){
    	$.fn.dataTable.ext.errMode='none'; //warning alert 출력 막기. none 대신 throw 넣으면 브라우저의 console 출력.
    	//$('#foo-table-output').dataTable().fnDestroy();
    	var check = true; // true면 데이터테이블 실행  false면 x
    	var text = $('#m1 > b').text();
    	
    	$('#myboard-title').text(text);
    	
    	/* 테이블 초기화 */
    	if ($.fn.DataTable.isDataTable("#foo-table")) {
    		  $('#foo-table').DataTable().clear().destroy();
    		  $('#foo-table-output').empty();
    	}
    	$('#foo-table-thead').empty();
    	var thead = '';
		 thead += '<tr>';
		 thead += '<th>등록일</th>';
		 thead += '<th>글제목</th>';
		 thead += '<th>조회수</th>';
		 thead += '<th>스크랩</th>';
		 thead += '</tr>';
		 $('#foo-table-thead').append(thead);
    	
    	$.ajax({
    		url:'/bit_project/getboard1.my',
    		type:'POST',
    		data: {'email' : email, 'category' : text},
    		dataType: 'json',
    		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		async: false, //ajax 옵션, ajax실행이 끝난후 함수가 실행된다
    		success: function(data) {
    			 
    			$.each(data, function(index, item) {
    				var date1 = new Date(item.regist);
    				var regist = date_format(date1);
    				var output = '';
    				output += '<tr>';
    				output += '<td>'+ regist +'</td>';
    				output += '<td>'+ item.board_name +'</td>';
    				output += '<td>'+ item.count +'</td>';
    				output += '<td>'+ item.scrap_count +'</td>';
    				output += '</tr>';
    				console.log("output:" + output);
    				$('#foo-table-output').prepend(output);

    			});
    		},
    		error:function() {
    		check = false;	
    		}
    	});
    	if(check == true) { //성공하면 테이블 실행
			$('#foo-table').DataTable({
				language : lang_kor,
				order: [ [ 0, "desc" ] ]
			});
		}   		
    	
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        menu6.css("display", "none");
        if(menu6.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m11 > b').css('color', '#EA7475');
            $('#m12 > b').css('color', 'black');
            $('#m13 > b').css('color', 'black');
            $('#m14 > b').css('color', 'black');
            $('#m15 > b').css('color', 'black');
            $('#m16 > b').css('color', 'black');
            $('#m17 > b').css('color', 'black');
            $('#m18 > b').css('color', 'black');           
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
            menu6.show();
        }
    });
    /* 육아사진 */
    $('#m12').click(function(){
    	$.fn.dataTable.ext.errMode='none'; //warning alert 출력 막기.
    	var check = true; // true면 데이터테이블 실행  false면 x
    	var text = $('#m2 > b').text();
    	
    	$('#myboard-title').text(text);
    	/* 테이블 초기화 */
    	if ($.fn.DataTable.isDataTable("#foo-table")) {
    		  $('#foo-table').DataTable().clear().destroy();
    		  $('#foo-table-output').empty();
    	}
    	
    	$('#foo-table-thead').empty();
    	var thead = '';
		 thead += '<tr>';
		 thead += '<th>등록일</th>';
		 thead += '<th>글제목</th>';
		 thead += '<th>조회수</th>';
		 thead += '<th>스크랩</th>';
		 thead += '</tr>';
		 $('#foo-table-thead').append(thead);
    	
    
    	$.ajax({
    		url:'/bit_project/getboard2.my',
    		type:'POST',
    		data: {'email' : email, 'category' : text},
    		dataType: 'json',
    		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		async: false, //ajax 옵션, ajax실행이 끝난후 함수가 실행된다
    		success: function(data) {
    			$.each(data, function(index, item) {
    				var date1 = new Date(item.regist);
    				var regist = date_format(date1);
    				var output = '';
    				output += '<tr>';
    				output += '<td>'+ regist +'</td>';
    				output += '<td>'+ item.board_name +'</td>';
    				output += '<td>'+ item.count +'</td>';
    				output += '<td>'+ item.scrap_count +'</td>';
    				output += '</tr>';
    				console.log("output:" + output);
    				$('#foo-table-output').prepend(output);

    			});
    			
    		},
    		error:function() {
    			check = false;	
    		}
    	});
    	if(check == true) { //성공하면 테이블 실행
			$('#foo-table').DataTable({
				language : lang_kor,
				order: [ [ 0, "desc" ] ]
			});
		}  
    	
    	
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        menu6.css("display", "none");
        if(menu6.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m11 > b').css('color', 'black');
            $('#m12 > b').css('color', '#EA7475');
            $('#m13 > b').css('color', 'black');
            $('#m14 > b').css('color', 'black');
            $('#m15 > b').css('color', 'black');
            $('#m16 > b').css('color', 'black');
            $('#m17 > b').css('color', 'black');
            $('#m18 > b').css('color', 'black');   
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
            menu6.show();
        }
    });
    /* 정보공유(팁) */
    $('#m13').click(function(){
    	$.fn.dataTable.ext.errMode='none'; //warning alert 출력 막기.
    	var check = true; // true면 데이터테이블 실행  false면 x
    	var text = $('#m3 > b').text();
    	$('#myboard-title').text(text);
    	/* 테이블 초기화 */
    	if ($.fn.DataTable.isDataTable("#foo-table")) {
    		  $('#foo-table').DataTable().clear().destroy();
    		  $('#foo-table-output').empty();
    	}
    	$('#foo-table-thead').empty();
    	var thead = '';
		 thead += '<tr>';
		 thead += '<th>등록일</th>';
		 thead += '<th>글제목</th>';
		 thead += '<th>조회수</th>';
		 thead += '<th>스크랩</th>';
		 thead += '</tr>';
		 $('#foo-table-thead').append(thead);
    	
    	$.ajax({
    		url:'/bit_project/getboard3.my',
    		type:'POST',
    		data: {'email' : email, 'category' : text},
    		dataType: 'json',
    		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		async: false, //ajax 옵션, ajax실행이 끝난후 함수가 실행된다
    		success: function(data) {
    			$.each(data, function(index, item) {
    				var date1 = new Date(item.regist);
    				var regist = date_format(date1);
    				var output = '';
    				output += '<tr>';
    				output += '<td>'+ regist +'</td>';
    				output += '<td>'+ item.board_name +'</td>';
    				output += '<td>'+ item.count +'</td>';
    				output += '<td>'+ item.scrap_count +'</td>';
    				output += '</tr>';
    				console.log("output:" + output);
    				$('#foo-table-output').prepend(output);

    			});
    		},
    		error:function() {
    			check = false;	
    		}
    	});
    	
    	if(check == true) { //성공하면 테이블 실행
			$('#foo-table').DataTable({
				language : lang_kor,
				order: [ [ 0, "desc" ] ]
			});
		}   
    	
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        menu6.css("display", "none");
        if(menu6.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m11 > b').css('color', 'black');
            $('#m12 > b').css('color', 'black');
            $('#m13 > b').css('color', '#EA7475');
            $('#m14 > b').css('color', 'black');
            $('#m15 > b').css('color', 'black');
            $('#m16 > b').css('color', 'black');
            $('#m17 > b').css('color', 'black');
            $('#m18 > b').css('color', 'black');   
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
            menu6.show();
        }
    });
    /* 공구게시판 */
    $('#m14').click(function(){
    	$.fn.dataTable.ext.errMode='none'; 
    	var check = true;
    	var text = $('#m4 > b').text();
    	$('#myboard-title').text(text);
    	/* 테이블 초기화 */
    	if ($.fn.DataTable.isDataTable("#foo-table")) {
    		  $('#foo-table').DataTable().clear().destroy();
    		  $('#foo-table-output').empty();
    	}
    	$('#foo-table-thead').empty();
    	var thead = '';
		 thead += '<tr>';
		 thead += '<th>등록일</th>';
		 thead += '<th>글제목</th>';
		 thead += '<th>조회수</th>';
		 thead += '<th>스크랩</th>';
		 thead += '</tr>';
		 $('#foo-table-thead').append(thead);
    	
    	$.ajax({
    		url:'/bit_project/getboard4.my',
    		type:'POST',
    		data: {'email' : email, 'category' : text},
    		dataType: 'json',
    		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		async: false,
    		success: function(data) {
    			$.each(data, function(index, item) {
    				var date1 = new Date(item.regist);
    				var regist = date_format(date1);
    				var output = '';
    				output += '<tr>';
    				output += '<td>'+ regist +'</td>';
    				output += '<td>'+ item.board_name +'</td>';
    				output += '<td>'+ item.count +'</td>';
    				output += '<td>'+ item.scrap_count +'</td>';
    				output += '</tr>';
    				console.log("output:" + output);
    				$('#foo-table-output').prepend(output);

    			});
    			
    		},
    		error:function() {
    			check = false;
    		}
    	});
    	if(check == true) { //성공하면 테이블 실행
			$('#foo-table').DataTable({
				language : lang_kor,
				order: [ [ 0, "desc" ] ]
			});
		}  
    	
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        menu6.css("display", "none");
        if(menu6.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m11 > b').css('color', 'black');
            $('#m12 > b').css('color', 'black');
            $('#m13 > b').css('color', 'black');
            $('#m14 > b').css('color', '#EA7475');
            $('#m15 > b').css('color', 'black');
            $('#m16 > b').css('color', 'black');
            $('#m17 > b').css('color', 'black');
            $('#m18 > b').css('color', 'black');   
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
            menu6.show();
        }
    });
    /* 육아관련질문 */
    $('#m15').click(function(){
    	$.fn.dataTable.ext.errMode='none';
    	var check = true;
    	var text = $('#m5 > b').text();
    	$('#myboard-title').text(text);
    	/* 테이블 초기화 */
    	if ($.fn.DataTable.isDataTable("#foo-table")) {
    		  $('#foo-table').DataTable().clear().destroy();
    		  $('#foo-table-output').empty();
    	}
    	$('#foo-table-thead').empty();
    	var thead = '';
		 thead += '<tr>';
		 thead += '<th>등록일</th>';
		 thead += '<th>글제목</th>';
		 thead += '<th>조회수</th>';
		 thead += '<th>스크랩</th>';
		 thead += '</tr>';
		 $('#foo-table-thead').append(thead);
    	
    	$.ajax({
    		url:'/bit_project/getboard5.my',
    		type:'POST',
    		data: {'email' : email, 'category' : text},
    		dataType: 'json',
    		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		async: false,
    		success: function(data) {
    			$.each(data, function(index, item) {
    				var date1 = new Date(item.regist);
    				var regist = date_format(date1);
    				var output = '';
    				output += '<tr>';
    				output += '<td>'+ regist +'</td>';
    				output += '<td>'+ item.board_name +'</td>';
    				output += '<td>'+ item.count +'</td>';
    				output += '<td>'+ item.scrap_count +'</td>';
    				output += '</tr>';
    				console.log("output:" + output);
    				$('#foo-table-output').prepend(output);

    			});
    		},
    		error:function() {
    			check = false;
    		}
    	});
    	if(check == true) { //성공하면 테이블 실행
			$('#foo-table').DataTable({
				language : lang_kor,
				order: [ [ 0, "desc" ] ]
			});
		}   
    	
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        menu6.css("display", "none");
        if(menu6.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m11 > b').css('color', 'black');
            $('#m12 > b').css('color', 'black');
            $('#m13 > b').css('color', 'black');
            $('#m14 > b').css('color', 'black');
            $('#m15 > b').css('color', '#EA7475');
            $('#m16 > b').css('color', 'black');
            $('#m17 > b').css('color', 'black');
            $('#m18 > b').css('color', 'black');   
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
            menu6.show();
        }
    });
    /* 이슈.토론 */
    $('#m16').click(function(){
    	$.fn.dataTable.ext.errMode='none';
    	var check = true;
    	var text = $('#m6 > b').text();
    	$('#myboard-title').text(text);
    	/* 테이블 초기화 */
    	if ($.fn.DataTable.isDataTable("#foo-table")) {
    		  $('#foo-table').DataTable().clear().destroy();
    		  $('#foo-table-output').empty();
    	}
    	$('#foo-table-thead').empty();
    	var thead = '';
		 thead += '<tr>';
		 thead += '<th>등록일</th>';
		 thead += '<th>글제목</th>';
		 thead += '<th>조회수</th>';
		 thead += '<th>스크랩</th>';
		 thead += '</tr>';
		 $('#foo-table-thead').append(thead);
    	
    	$.ajax({
    		url:'/bit_project/getboard6.my',
    		type:'POST',
    		data: {'email' : email, 'category' : text},
    		dataType: 'json',
    		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		async: false,
    		success: function(data) {
    			$.each(data, function(index, item) {
    				var date1 = new Date(item.regist);
    				var regist = date_format(date1);
    				var output = '';
    				output += '<tr>';
    				output += '<td>'+ regist +'</td>';
    				output += '<td>'+ item.board_name +'</td>';
    				output += '<td>'+ item.count +'</td>';
    				output += '<td>'+ item.scrap_count +'</td>';
    				output += '</tr>';
    				console.log("output:" + output);
    				$('#foo-table-output').prepend(output);

    			});
    		},
    		error:function() {
    			check = false;
    		}
    	});
    	if(check == true) { //성공하면 테이블 실행
			$('#foo-table').DataTable({
				language : lang_kor,
				order: [ [ 0, "desc" ] ]
			});
		}  
    	
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        menu6.css("display", "none");
        if(menu6.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m11 > b').css('color', 'black');
            $('#m12 > b').css('color', 'black');
            $('#m13 > b').css('color', 'black');
            $('#m14 > b').css('color', 'black');
            $('#m15 > b').css('color', 'black');
            $('#m16 > b').css('color', '#EA7475');
            $('#m17 > b').css('color', 'black');
            $('#m18 > b').css('color', 'black');   
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
            menu6.show();
        }
    });
    /* 댓글 */
    $('#m17').click(function(){
    	$.fn.dataTable.ext.errMode='none';
    	var check = true;
    	var text = $('#m7 > b').text();
    	$('#myboard-title').text(text);
    	/* 테이블 초기화 */
    	if ($.fn.DataTable.isDataTable("#foo-table")) {
    		  $('#foo-table').DataTable().clear().destroy();
    		  $('#foo-table-output').empty();
    	}
    	$('#foo-table-thead').empty();
    	var thead = '';
		 thead += '<tr>';
		 thead += '<th>등록일</th>';
		 thead += '<th>댓글 내용</th>';
		 thead += '</tr>';
		 $('#foo-table-thead').append(thead);
    	
    	$.ajax({
    		url:'/bit_project/getboard7.my',
    		type:'POST',
    		data: {'email' : email},
    		dataType: 'json',
    		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		async: false,
    		success: function(data) {
    			$.each(data, function(index, item) {
    				var date1 = new Date(item.regist);
    				var regist = date_format(date1);
    				var output = '';
    				output += '<tr>';
    				output += '<td>'+ regist +'</td>';
    				output += '<td>'+ item.content +'</td>';
    				output += '</tr>';
    				console.log("output:" + output);
    				$('#foo-table-output').prepend(output);

    			});
    			
    		},
    		error:function() {
    			check = false;
    		}
    	});
    	if(check == true) { //성공하면 테이블 실행
			$('#foo-table').DataTable({
				language : lang_kor,
				order: [ [ 0, "desc" ] ]
			});
		} 
    	
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        menu6.css("display", "none");
        if(menu6.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m11 > b').css('color', 'black');
            $('#m12 > b').css('color', 'black');
            $('#m13 > b').css('color', 'black');
            $('#m14 > b').css('color', 'black');
            $('#m15 > b').css('color', 'black');
            $('#m16 > b').css('color', 'black');
            $('#m17 > b').css('color', '#EA7475');
            $('#m18 > b').css('color', 'black');   
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
            menu6.show();
        }
    });
    /* 후기 */
    $('#m18').click(function(){
    	$.fn.dataTable.ext.errMode='none';
    	var check = true;
    	var text = $('#m8 > b').text();
    	$('#myboard-title').text(text);
    	/* 테이블 초기화 */
    	if ($.fn.DataTable.isDataTable("#foo-table")) {
    		  $('#foo-table').DataTable().clear().destroy();
    		  $('#foo-table-output').empty();
    	}
    	$('#foo-table-thead').empty();
    	var thead = '';
		 thead += '<tr>';
		 thead += '<th>등록일</th>';
		 thead += '<th>후기</th>';
		 thead += '</tr>';
		 $('#foo-table-thead').append(thead);
   	
    	
    	$.ajax({
    		url:'/bit_project/getboard8.my',
    		type:'POST',
    		data: {'email' : email},
    		dataType: 'json',
    		async: false, 
    		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		success: function(data) {
    			$.each(data, function(index, item) {
    				var date1 = new Date(item.regist);
    				var regist = date_format(date1);
    				var output = '';
    				output += '<tr>';
    				output += '<td>'+ regist +'</td>';
    				output += '<td>'+ item.content +'</td>';
    				output += '</tr>';
    				console.log("output:" + output);
    				$('#foo-table-output').prepend(output);

    			});
    		},
    		error:function() {
    			check = false;
    		}
    	});
    	
    	if(check == true) { //성공하면 테이블 실행
			$('#foo-table').DataTable({
				language : lang_kor,
				order: [ [ 0, "desc" ] ]
			});
		}  
    	
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        menu6.css("display", "none");
        if(menu6.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m11 > b').css('color', 'black');
            $('#m12 > b').css('color', 'black');
            $('#m13 > b').css('color', 'black');
            $('#m14 > b').css('color', 'black');
            $('#m15 > b').css('color', 'black');
            $('#m16 > b').css('color', 'black');
            $('#m17 > b').css('color', 'black');
            $('#m18 > b').css('color', '#EA7475');   
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
            menu6.show();
        }
    });
    
    $('#num22').click(function(){
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        if(menu2.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', '#EA7475');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m1 > b').css('color', 'black');
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.show();
            menu3.hide();
            menu4.hide();
            menu5.hide();
            menu6.hide();
        }
    });
    
    $('#num44').click(function(){
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        if(menu4.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', '#EA7475');
            $('#num5 > b').css('color', 'black');
            $('#m1 > b').css('color', 'black');
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.show();
            menu5.hide();
            menu6.hide();
        }
    });
    
    $('#num55').click(function(){
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        if(menu5.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', '#EA7475');
            $('#m1 > b').css('color', 'black');
            list.hide();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.show();
            menu6.hide();
        }
    });
    
    
     /* 메뉴버튼 이벤트 끝 */


    /* 프로필 메뉴 > 위시리스트/ 예약/ 찜 시작 */
    $('.btn1').click(function() {
    	var wishlistdata = {email : myemail};
    	 $.ajax({
         	url: '/bit_project/mypage_wishlist.my',
             type: 'GET',
             dataType: 'json',
             async:false,
             data : wishlistdata,
             success: function (data) {
             	$(".list").empty();
                 var wishlist_header = "";
                 var wishlist_footer = "";
                 var wishcnt = 0;
                 wishlist_header += '<div class="list_menu">';
                 wishlist_header += '<table>';
                 wishlist_header += '<tr class="menu_line">';
                 wishlist_header += '<th class="profile_menu1"><b class="oh">위시리스트</b></th>';
                 wishlist_header += '<th class="profile_menu2"><b class="oh">예약</b></th>';
                 wishlist_header += '<th class="profile_menu3"><b class="oh">찜</b></th>';
                 wishlist_header += '</tr>';
                 wishlist_header += '</table>';
                 //wishlist_header += '<p>n개의상품이있다.</p>';
                 wishlist_header += '</div>';
                 $(".list").append(wishlist_header);
                 wishlist_footer += '<div class="menu_product">';
                 wishlist_footer += '<table>';
                 wishlist_footer += '<tr class="product_line">';
                 wishlist_footer += '<td>';
                 wishlist_footer += '</td>';
                 wishlist_footer += '</tr>';
                 wishlist_footer += '</table>';
                 wishlist_footer += '</div>';
                 $(".list").append(wishlist_footer);
                 $.each(data, function (index, item) {
                     var wishlist_body = "";
                     wishlist_body += '<div class="product'+wishcnt+'"></div>';
                     console.log(wishlist_body);
                     $(".list .product_line td").append(wishlist_body);
                     var wishlist_body2 = "";
                     wishlist_body2 += '<a href="productDetail.pr?num='+item.product_num+'">';
                     wishlist_body2 += '<img src="/bit_project/image/'+item.img_sum+'">';
                     wishlist_body2 +='</a>';
                     wishlist_body2 += '<h3>'+item.product_name+'</h3>';
                     $(".list .product_line td .product"+wishcnt).append(wishlist_body2);
                     wishcnt++;
                     console.log(item.product_name);
                 })
                 if(wishcnt==0){
                 	var mytotalcount = '<p>선택한 상품이 없습니다.</p>';
                     $(".list_menu").append(mytotalcount);
                 }else {
                 	var mytotalcount = '<p>선택한 상품 : '+wishcnt+'개'+'</p>';
                     $(".list_menu").append(mytotalcount);	
                 }
             },
 	        error: function () {
 				alert("ajax오류");
 			}
         });
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        
        if(list.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m1 > b').css('color', 'black');
            list.show();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
            menu6.hide();
            $('.profile_menu1 > b').css('color', '#EA7475');
            $('.profile_menu2 > b').css('color', 'black');
            $('.profile_menu3 > b').css('color', 'black');
        } else {           
            $('.profile_menu1 > b').css('color', '#EA7475');
            $('.profile_menu2 > b').css('color', 'black');
            $('.profile_menu3 > b').css('color', 'black');
        }
       
    });
    
    $('.btn2').click(function() {
    	var reserdata = {email : myemail};
    	$.ajax({
        	url: '/bit_project/mypage_reservation.my',
            type: 'GET',
            dataType: 'json',
            async:false,
            data : reserdata,
            success: function (data) {
                $(".list").empty();
                var reser_header = "";
                var reser_footer = "";
                var resercnt = 0;
                reser_header += '<div class="list_menu">';
                reser_header += '<table>';
                reser_header += '<tr class="menu_line">';
                reser_header += '<th class="profile_menu1"><b class="oh">위시리스트</b></th>';
                reser_header += '<th class="profile_menu2"><b class="oh">예약</b></th>';
                reser_header += '<th class="profile_menu3"><b class="oh">찜</b></th>';
                reser_header += '</tr>';
                reser_header += '</table>';
                //bookmark_header += '<p>n개의상품이있다.</p>';
                reser_header += '</div>';
                $(".list").append(reser_header);
                reser_footer += '<div class="menu_product">';
                reser_footer += '<table>';
                reser_footer += '<tr class="product_line">';
                reser_footer += '<td>';
                reser_footer += '</td>';
                reser_footer += '</tr>';
                reser_footer += '</table>';
                reser_footer += '</div>';
                $(".list").append(reser_footer);
                $.each(data, function (index, item) {
                    var reser_body = "";
                    reser_body += '<div class="product'+resercnt+'"></div>';
                    $(".list .product_line td").append(reser_body);
                    var reser_body2 = "";
                    reser_body2 += '<a href="productDetail.pr?num='+item.product_num+'">';
                    reser_body2 += '<img src="/bit_project/image/'+item.img_sum+'">';
                    reser_body2 +='</a>';
                    reser_body2 += '<h3>'+item.product_name+'</h3>';
                    $(".list .product_line td .product"+resercnt).append(reser_body2);
                    resercnt++;
                })
                if(resercnt==0){
                	var mytotalcount = '<p>예약한 상품이 없습니다.</p>';
                    $(".list_menu").append(mytotalcount);
                }else {
                	var mytotalcount = '<p>예약한 상품 : '+resercnt+'개'+'</p>';
                    $(".list_menu").append(mytotalcount);	
                }
                
            },
	        error: function () {
				alert("ajax오류");
			}
        });
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        if(list.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m1 > b').css('color', 'black');
            $('.profile_menu1 > b').css('color', 'black');
            $('.profile_menu2 > b').css('color', '#EA7475');
            $('.profile_menu3 > b').css('color', 'black');
            list.show();
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
            menu6.hide();
        } else {
            $('.profile_menu1 > b').css('color', 'black');
            $('.profile_menu2 > b').css('color', '#EA7475');
            $('.profile_menu3 > b').css('color', 'black');
        }
        
    });
    $('.btn3').click(function() {
    	var bookmarkdata = {email : myemail};
    	$.ajax({
        	url: '/bit_project/mypage_bookmark.my',
            type: 'GET',
            dataType: 'json',
            async:false,
            data : bookmarkdata,
            success: function (data) {
                $(".list").empty();
                var bookmark_header = "";
                var bookmark_footer = "";
                var bookcnt = 0;
                bookmark_header += '<div class="list_menu">';
                bookmark_header += '<table>';
                bookmark_header += '<tr class="menu_line">';
                bookmark_header += '<th class="profile_menu1"><b class="oh">위시리스트</b></th>';
                bookmark_header += '<th class="profile_menu2"><b class="oh">예약</b></th>';
                bookmark_header += '<th class="profile_menu3"><b class="oh">찜</b></th>';
                bookmark_header += '</tr>';
                bookmark_header += '</table>';
                //bookmark_header += '<p>n개의상품이있다.</p>';
                bookmark_header += '</div>';
                $(".list").append(bookmark_header);
                bookmark_footer += '<div class="menu_product">';
                bookmark_footer += '<table>';
                bookmark_footer += '<tr class="product_line">';
                bookmark_footer += '<td>';
	            bookmark_footer += '</td>';
	            bookmark_footer += '</tr>';
                bookmark_footer += '</table>';
                bookmark_footer += '</div>';
                $(".list").append(bookmark_footer);
                $.each(data, function (index, item) {
                    var bookmark_body = "";
                    bookmark_body += '<div class="product'+bookcnt+'"></div>';
                    console.log(bookmark_body);
                    $(".list .product_line td").append(bookmark_body);
                    var bookmark_body2 = "";
                    bookmark_body2 += '<a href="productDetail.pr?num='+item.product_num+'">';
                    bookmark_body2 += '<img src="/bit_project/image/'+item.img_sum+'">';
                    bookmark_body2 +='</a>';
                    bookmark_body2 += '<h3>'+item.product_name+'</h3>';
                    $(".list .product_line td .product"+bookcnt).append(bookmark_body2);
                    bookcnt++;
                })
                if(bookcnt==0){
                	var mytotalcount = '<p>찜한 상품이 없습니다.</p>';
                    $(".list_menu").append(mytotalcount);
                }else {
                	var mytotalcount = '<p>찜한 상품 : '+bookcnt+'개'+'</p>';
                    $(".list_menu").append(mytotalcount);	
                }
            },
	        error: function () {
				alert("ajax오류");
			}
        });
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        if(list.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m1 > b').css('color', 'black');
            menu0.hide();
            menu1.hide();
            menu2.hide();
            menu3.hide();
            menu4.hide();
            menu5.hide();
            menu6.hide();
            list.show();
            $('.profile_menu1 > b').css('color', 'black');
            $('.profile_menu2 > b').css('color', 'black');
            $('.profile_menu3 > b').css('color', '#EA7475');
        } else {
            $('.profile_menu1 > b').css('color', 'black');
            $('.profile_menu2 > b').css('color', 'black');
            $('.profile_menu3 > b').css('color', '#EA7475');
        }
        
    });

    $('.profile_menu1').click(function() {
        $('.profile_menu1 > b').css('color', '#EA7475');
        $('.profile_menu2 > b').css('color', 'black');
        $('.profile_menu3 > b').css('color', 'black');
    });
    $('.profile_menu2').click(function() {
        $('.profile_menu1 > b').css('color', 'black');
        $('.profile_menu2 > b').css('color', '#EA7475');
        $('.profile_menu3 > b').css('color', 'black');
    });
    $('.profile_menu3').click(function() {
        $('.profile_menu1 > b').css('color', 'black');
        $('.profile_menu2 > b').css('color', 'black');
        $('.profile_menu3 > b').css('color', '#EA7475');
    });
    /* 프로필 메뉴 > 위시리스트/ 예약/ 찜 끝 */

    
    $('.share_btn').click(function() {
    	confirm('모두 정산하시겠습니까?');
    });
});

function date_to_str(format)
{
    var year = format.getFullYear();
    var month = format.getMonth() + 1;
    if(month<10) month = '0' + month;
    var date = format.getDate();
    if(date<10) date = '0' + date;
    var hour = format.getHours();
    if(hour<10) hour = '0' + hour;
    var min = format.getMinutes();
    if(min<10) min = '0' + min;
    var sec = format.getSeconds();
    if(sec<10) sec = '0' + sec;
    
    return year + "-" + month + "-" + date + " " + hour + ":" + min;
    
}
function settlement(_sNum) {
	var settle = confirm("정산하시겠습니까?");
	
	if(settle){
		var settle_y = prompt("금액을 입력해주세요.");
		
		if(settle_y){
			var a = Number(settle_y);
			console.log(a);
			if(a=="NaN"){
				alert("다시 정산 버튼을 누르고 숫자만 입력해주세요.");
			}else {
				alert("정산신청이 완료되었습니다. 1~2일 이내 관리자가 확인 후 계좌로 보내드립니다.");
				  $.ajax({
			            url: '/bit_project/mypage_share_settle.my',
			            type: 'GET',
			            dataType: 'json',
			            data:{"email" : myemail, "settle" : a, "share_num" : _sNum},
			            async:false,
			            success: function (data) {
			                    
			                    
			                    
			            },
			            error: function () {
			                alert("마이페이지 쉐어 신청 리스트 출력 실패");
			            }
			        });
			}
		}
	}
}