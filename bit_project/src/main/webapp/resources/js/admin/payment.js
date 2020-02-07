$(document).ready(function() {
	
	function payment() {		
		$.ajax({
			url : '/bit_project/subscribemember.su',
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
					output += '<td>' + item.name + '</td>';
					output += '<td>' + item.phone + '</td>';
					output += '<td>' + item.grade + '</td>';
					output += '<td>' + item.price + '</td>';
					output += '<td>' + item.point_price + '</td>';
					output += '<td>' + item.pay_price + '</td>';									
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
	payment();
});
