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
    
    $('#m1').click(function(){
    	var check = true; // true면 데이터테이블 실행  false면 x
    	var text = $('#m1 > b').text();
    	$('#foo-table-output').empty();
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
    	
    	if(check == true) {
			$('#foo-table').DataTable({
				language : lang_kor
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
    
    $('#m2').click(function(){
    	var text = $('#m2 > b').text();
    	$.ajax({
    		url:'/bit_project/getboard2.my',
    		type:'POST',
    		dataType: 'json',
    		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		success: function(data) {
    			
    		},
    		error:function() {
    			
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
    
    $('#m3').click(function(){
    	var text = $('#m3 > b').text();
    	$.ajax({
    		url:'/bit_project/getboard3.my',
    		type:'POST',
    		dataType: 'json',
    		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		success: function(data) {
    			
    		},
    		error:function() {
    			
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
    
    $('#m4').click(function(){
    	var text = $('#m4 > b').text();
    	$.ajax({
    		url:'/bit_project/getboard4.my',
    		type:'POST',
    		dataType: 'json',
    		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		success: function(data) {
    			
    		},
    		error:function() {
    			
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
    
    $('#m5').click(function(){
    	var text = $('#m5 > b').text();
    	$.ajax({
    		url:'/bit_project/getboard5.my',
    		type:'POST',
    		dataType: 'json',
    		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		success: function(data) {
    			
    		},
    		error:function() {
    			
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
    
    $('#m6').click(function(){
    	var text = $('#m6 > b').text();
    	$.ajax({
    		url:'/bit_project/getboard6.my',
    		type:'POST',
    		dataType: 'json',
    		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		success: function(data) {
    			
    		},
    		error:function() {
    			
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
    
    $('#m7').click(function(){
    	var text = $('#m7 > b').text();
    	$.ajax({
    		url:'/bit_project/getboard7.my',
    		type:'POST',
    		dataType: 'json',
    		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		success: function(data) {
    			
    		},
    		error:function() {
    			
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
    
    $('#m8').click(function(){
    	var text = $('#m8 > b').text();
    	$.ajax({
    		url:'/bit_project/getboard8.my',
    		type:'POST',
    		dataType: 'json',
    		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
    		success: function(data) {
    			
    		},
    		error:function() {
    			
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
    
    $('#m11').click(function(){
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
    
    $('#m12').click(function(){
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
    
    $('#m13').click(function(){
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
    
    $('#m14').click(function(){
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
    
    $('#m15').click(function(){
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
    
    $('#m16').click(function(){
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
    
    $('#m17').click(function(){
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
    
    $('#m18').click(function(){
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

