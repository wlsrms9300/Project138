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
        var list= $('.list');
        var menu0= $('.calendar-wrap');
        var menu1= $('.subscribe_wrap');
        var menu2= $('.point_wrap');
        var menu3= $('.share');
        var menu4= $('.member_update');
        var menu5= $('.member_bye');
        var menu6= $('.board_list_wrap');
        if(menu6.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m1 > b').css('color', '#EA7475');
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
        if(menu6.css("display") == "none") {
            $('#num0').css('color', 'black');
            $('#num1 > b').css('color', 'black');
            $('#num2 > b').css('color', 'black');
            $('#num3 > b').css('color', 'black');
            $('#num4 > b').css('color', 'black');
            $('#num5 > b').css('color', 'black');
            $('#m11 > b').css('color', '#EA7475');
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

    /* point 사용하기 클릭 이벤트 */
    $('.point_button').click(function(){
        window.confirm('포인트를 사용하시겠습니까?');
        $('.point_text').val('');
    });

    /* 프로필 메뉴 > 위시리스트/ 예약/ 찜 시작 */
    $('.btn1').click(function() {
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
            $('.profile_menu1 > b').css('color', '#EA7475');
            $('.profile_menu2 > b').css('color', 'black');
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
            $('.profile_menu1 > b').css('color', '#EA7475');
            $('.profile_menu2 > b').css('color', 'black');
            $('.profile_menu3 > b').css('color', 'black');
        }
    });
    $('.btn2').click(function() {
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
            $('.profile_menu2 > b').css('color', 'black');
            $('.profile_menu3 > b').css('color', '#EA7475');
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

