/*$(document).ready(function(){
	loadJQuery();
	loadCss();
});
function loadJQuery() {
    var oScript = document.createElement("script");
    oScript.type = "text/javascript";
    oScript.charset = "utf-8";		  
    oScript.src = "http://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js";	
    document.getElementsByTagName("head")[0].appendChild(oScript);
}
loadJQuery();

function loadCss(){
	var objLink = document.createElement( "link" );
	objLink.rel = "stylesheet";
	objLink.type = "text/css";
	objLink.href = "https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css";
	   
	document.getElementsByTagName("head")[0].appendChild(objLink);
}
loadCss();*/

	
	/*$('#board_history').click(function() {
		var history = $('.history_drop');
		if (history.is(":visible")) {
			$('.board_history_btn > b').text('+');
			history.slideUp();
		} else {
			$('.board_history_btn > b').text('-');
			history.slideDown();
		}
	});*/

	

	
	/* db에 member 정보 저장돼있는것 불러와서 뿌려주는 ajax */
	function member_group() {
		
		$.ajax({
			url : '/bit_project/member_group.tz',
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
					output += '<td>' + item.nickname + '</td>';
					output += '<td>' + item.usergroup + '</td>';
					
					if(item.usergroup == "일반회원"){
						output += '<td><button type="button" class="btn btn-sm btn-primary">일반회원</button> &nbsp;';
						output += '<button type="button" class="btn btn-sm btn-default" onclick="normal_to_bad(' + email + ');">비매너회원</button></td>';
						normal = item.usergroup;
					} else{
						output += '<td><button type="button" class="btn btn-sm btn-default" onclick="bad_to_normal(' + email + ');">일반회원</button> &nbsp;';
						output += '<button type="button" class="btn btn-sm btn-primary">비매너회원</button></td>';
						bad = item.usergroup;
					}
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
	
	
	
	function normal_to_bad(param_email) {
		var input = confirm("수정하시겠습니까?");
		alert(input);
		alert(param_email);
		$.ajax({

			url : '/bit_project/normal_to_bad.tz',
			type : "post",
			dataType : "json",
			data : {
				usergroup : normal,
				email : param_email
			},
			contentType : 'application/x-www-form-urlencoded; charset=utf-8',
			success : function(retVal){
				if (retVal.res == "OK") {
					alert("usergroup 수정 완료.");
					member_group();
				} else { // 실패했다면
					alert("usergroup 수정 실패.");
				}
			},
			error : function(){
				alert("ajax통신 실패 !!!");
			}

		});
	}
	
	function bad_to_normal(param_email) {
		var input = confirm("수정하시겠습니까?");
		alert(input);
		alert(param_email);
		$.ajax({

			url : '/bit_project/bad_to_normal.tz',
			type : "post",
			dataType : "json",
			data : {
				usergroup : bad,
				email : param_email
			},
			contentType : 'application/x-www-form-urlencoded; charset=utf-8',
			success : function(retVal){
				if (retVal.res == "OK") {
					alert("usergroup 수정 완료.");
					member_group();
				} else { // 실패했다면
					alert("usergroup 수정 실패.");
				}
			},
			error : function(){
				alert("ajax통신 실패 !!!");
			}

		});
	}
	

