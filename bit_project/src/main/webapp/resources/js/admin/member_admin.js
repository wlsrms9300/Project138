

	$('#board_history').click(function() {
		var history = $('.history_drop');
		if (history.is(":visible")) {
			$('.board_history_btn > b').text('+');
			history.slideUp();
		} else {
			$('.board_history_btn > b').text('-');
			history.slideDown();
		}
	});
	
	
	/* db에 member 정보 저장돼있는것 불러와서 뿌려주는 ajax */
	function member_admin() {
		
		$.ajax({

			url : '/bit_project/member_admin.tz',
			type : "post",
			dataType : "json",
			contentType : 'application/x-www-form-urlencoded; charset=utf-8',


			success:function(data){
				$.each(data, function(index, item){	//각각의 데이터는 item에 저장됨. index는 parameter값 item은 실제 저장된 값.
					var output = '';
					output += '<tr>';
					output += '<td>' + item.email + '</td>';
					output += '<td>' + item.nickname + '</td>';
					output += '<td>' + item.phone + '</td>';
					var date = new Date(item.regist);
		            date = date_to_str(date);
					output += '<td>' + date + '</td>';
					output += '<td>' + item.subscribe + '</td>';
					output += '<td>' + item.grade + '</td>';
					output += '<td>' + item.usergroup + '</td>';
					output += '</tr>';
					console.log("output:"+output);
					$('#output').append(output);
				});
			},
			error:function(){
				alert("ajax통신 실패 !!!");
			}

		});
	}
	member_admin();
	
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