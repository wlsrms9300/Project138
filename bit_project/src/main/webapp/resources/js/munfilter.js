/*
$('.filterbtn').click(function () {
		var filterform = document.getElementById("categoryListForm");
		filterform.action = 'filterSearch.pr';
		filterform.submit();
		
		$.ajax({
			url: '/bit_project/filterSearch.pr',
			type: 'post',
			dataType: "json",
			async:false,
			data:{pno : pno},
			contentType: 'application/x-www-form-urlencoded; charset=utf-8',
			success: function (data) {
					$.each(data, function (index, item) {
					
					});
			},
			error: function () {
				alert("ajax통신 실패 !!!");
			}
	});
});
*/

function filSearch(){
		$('.product_chart').empty();
		 var fil = new Array();
		 for(var j=1; j<4;j++){
		fil[0]= "";
		 var chkbox = $(".c" + j);
			 for (var i = 0; i < chkbox.length; i++) {
				 if (chkbox[i].checked == true) {
				      fil[j] += chkbox[i].value;
				 }
			 }
			 
		 }
		var fil1 = fil[1];
		var fil2 = fil[2];
		var fil3 = fil[3];
		var cnt = 1;
		var scnt = 1;
		$.ajax({
			url:'/bit_project/filterSearch.pr',
			type:'post', 
			data:{category_l : fil1, category_m : fil2, category_s : fil3}, 
			contentType:'application/x-www-form-urlencoded; charset=utf-8',
			dataType:"json",
			success: function (data) {
			$.each(data, function (index, item) {
				if(cnt%4==1){
					var op = 
					'<div class="swiper-container'+scnt+'">'+
					'<div class="chart_cont'+scnt+' swiper-wrapper">';
					$('.product_chart').append(op);
				}
				var output = '';
				output += 
				'<div class="swiper-slide">'+
				'<div class="pr_img">';
				output +=
				'<figure>'+
				'<a href="productDetail.pr">'+
				'<img src="/bit_project/image/'+item.img_sum+'">'+
				'</a>'+
				'</figure>';
				output +=
				'<div class="rank">'+
				'<strong>1</strong>'+
				'</div></div>';
				output +=
				'<div class="infor">';
				output +=
				'<h3><em>'+item.manufacturer+'</em><strong>'+item.product_name+'</strong></h3>';
				output +=
				'<div class="infor_btn">';
				output +=
				'<a href="productDetail.pr">상세정보</a>';
				output +=
				'<a href="#">위시리스트</a>';
				output +=
				'</div></div></div></div>';
				$('.chart_cont'+scnt).append(output);
				if(cnt%4==0){
					var output2 = '</div></div></div>';
					$('.product_chart').append(output2);
					scnt++;
				}
				cnt++;
			});
			},
			error:function(){
				alert("ajax 통신 실패 쿠쿠");
			}
		});
		event.preventDefault();
	};