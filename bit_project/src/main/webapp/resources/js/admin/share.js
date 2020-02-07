	function member_group() {
		
		$.ajax({
			url : '/bit_project/share.tz',
			type : 'post',
			dataType : "json",
			contentType : 'application/x-www-form-urlencoded; charset=utf-8',
			/*async : false,*/
			success:function(data){
				$('#output').empty();
				$.each(data, function(index, item){	//각각의 데이터는 item에 저장됨. index는 parameter값 item은 실제 저장된 값.
					
					var email = "'" + item.email + "'";
					
					var output = '';
					output += '<tr>';
					output += '<td>' + item.email + '</td>';
					output += '<td>' + item.phone + '</td>';
					
					var date = new Date(item.regist);
		            date = date_to_str(date);
					output += '<td>' + date + '</td>';
					
					output += '<td>' + '<button type="button" class="btn btn-sm btn-primary">상세보기</button>' + '</td>';
					
					output += '<td><button type="button" class="btn btn-sm btn-primary">수락</button> &nbsp;';
					output += '<button type="button" class="btn btn-sm btn-primary" onclick="accept(' + email + ');">수락</button></td>';
					output += '<button type="button" class="btn btn-sm btn-primary" onclick="deny(' + email + ');">거절</button></td>';
					
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
	member_group();
	
	
	
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