	function share() {
		
		$.ajax({
			url : '/bit_project/shareAcceptList.tz',
			type : 'post',
			dataType : "json",
			contentType : 'application/x-www-form-urlencoded; charset=utf-8',
			success:function(data){
				$('#output').empty();
				$.each(data, function(index, item){	//각각의 데이터는 item에 저장됨. index는 parameter값 item은 실제 저장된 값.
					var email = "'" + item.email + "'";
					var sib0 = "'" + item.waiting_num + "'";
					var sib1 = "'" + item.name + "'";
			      	var sib2 = "'"+item.product_name+"'";
                   	var sib3 = "'"+item.amount+"'";
                   	var sib4 = "'"+item.share_content+"'"; 
                   	var sib5 = "'"+item.share_img1+"'";
                   	var sib6 = "'"+item.share_img2+"'";
                   	var sib7 = "'"+item.share_img3+"'";
                   	var sib8 = "'"+item.bank+"'";
                   	var sib9 = "'"+item.account+"'";
                   	
					var output = '';
					output += '<tr>';
					output += '<td>' + item.email + '</td>';
					output += '<td>' + item.product_name + '</td>';
					output += '<td>' + item.amount + '</td>';
					var date1 = new Date(item.consignment_start_date);
					var date2 = new Date(item.consignment_end_date);
		            date1 = date_to_str(date1);
		            date2 = date_to_str(date2);
		           	var sib10 = "'"+date1+"'";
                   	var sib11 = "'"+date2+"'";
					output += '<td>' + date1 + '</td>';
					output += '<td>' + date2 + '</td>';
					output += '<td>' + item.share_content + '</td>';
					
					output += '<td>' + '<button type="button" class="btn btn-sm btn-primary" onclick="shareDetail('+sib0+','+email+','+sib1+','+sib2+','+sib3+','+sib4+','+sib5+','+sib6+','+sib7+','+sib8+','+sib9+');">상세보기</button>' + '</td>';
					output += '<td><button type="button" class="btn btn-sm btn-primary" onclick="add('+sib0+','+email+','+sib1+','+sib2+','+sib3+','+sib4+','+sib5+','+sib6+','+sib7+','+sib8+','+sib9+','+sib10+','+sib11+');">등록</button>'
					output += '</td>';
					
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
	share();
	
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
	
	

	function shareDetail(_wnum, _email, _name, _pName, _amount, _content, _img1, _img2, _img3, _bank, _account) {
		//파라미터로 받았고, 팝업창 띄움.
		$('#waiting_num').val(_wnum);
		$('#email').val(_email);
		$('#name').val(_name);
		$('#product_name').val(_pName);
		$('#amount').val(_amount);
		$('#share_content').val(_content);
		$('#share_img1').val(_img1);
		$('#share_img2').val(_img2);
		$('#share_img3').val(_img3);
		$('#bank').val(_bank);
		$('#account').val(_account);
	
		var pop_name = "popupDetail";
		window.open("", pop_name,"width=1200,height=700, scrollbars=no, resizable=no");
		
		 var frmData = document.frmData;
	        frmData.target = pop_name;
	        frmData.action = "/bit_project/shareDetail.pr";
	        frmData.submit();
	        share();
	}
	
function add(_wnum, _email, _name, _pName, _amount, _content, _img1, _img2, _img3, _bank, _account, start, end) {
	$('#waiting_num').val(_wnum);
	$('#email').val(_email);
	$('#name').val(_name);
	$('#product_name').val(_pName);
	$('#amount').val(_amount);
	$('#consignment_start_date').val(start);
	$('#consignment_end_date').val(end);
	$('#share_content').val(_content);
	$('#share_img1').val(_img1);
	$('#share_img2').val(_img2);
	$('#share_img3').val(_img3);
	$('#bank').val(_bank);
	$('#account').val(_account);

	var pop_name = "popupAdd";
	window.open("", pop_name,"width=1200,height=700, scrollbars=no, resizable=no");
	
	 var frmData = document.frmData;
        frmData.target = pop_name;
        frmData.action = "/bit_project/shareAdd.pr";
        frmData.submit();
        share();
}