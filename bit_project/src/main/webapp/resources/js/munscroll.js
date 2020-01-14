$(document).ready(function () {
	allSearch();
	
});
var pNum = 0;
function allSearch() {
	$('.product_chart').empty();
	//event.preventDefault();
	var cnt = 1;
	var scnt = 1;
	//$('.product_chart').empty();
	$.ajax({
		url: '/bit_project/startSearch.pr',
		type: 'post',
		dataType: "json",
		async:false,
		contentType: 'application/x-www-form-urlencoded; charset=utf-8',
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
			'<a href="productDetail.pr?num='+item.product_num+'">'+
			'<img src="/bit_project/image/'+item.img_sum+'">'+
			'</a>'+
			'</figure>';
			output +=
			'<div class="rank">'+
			'<strong>'+item.product_num+'</strong>'+
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
		error: function () {
			alert("ajax통신 실패 !!!");
		}
		
	});
	document.getElementById('printNumber').value = 8;
	pNum = parseInt(document.getElementById('printNumber').value); //8
	event.preventDefault();
}




	

/*var lastScrollTop = 0;
var currentScrollTop = $(window).scrollTop();
if(currentScrollTop - lastScrollTop > 800){
	//lastScrollTop=currentScrollTop;
	//alert(currentScrollTop);
	
	
}*/
var pno = 2;
$(window).scroll(function(){
	if($(window).scrollTop()+50 >= $(document).height() - $(window).height()){
		alert('현재 위치에서 ajax 데이터 호출');
		//1 필터값을 가져온다. 
		var fil = new Array(3);
		 for(var j=1; j<4;j++){		
		 var chkbox = $(".c" + j);
			 for (var i = 0; i < chkbox.length; i++) {
				 if (chkbox[i].checked == true) {
				      fil[j-1] += chkbox[i].value;
				      fil[j-1] += ",";				      
				 }
			 }
		 }
		//2. pNum을 넘긴다. 3. 데이터 받아온다.
		pNum = parseInt(document.getElementById('printNumber').value);
		var con_cnt = 3;
//		con_cnt = pNum%4+con_cnt;
		var slide_cnt = 1;
		$.ajax({
			url: '/bit_project/scrollSearch.pr',
			type: 'post',
			dataType: "json",
			async:false,
			data:{pno : pNum, category_l : fil[0], category_m : fil[1], category_s : fil[2]},
			contentType: 'application/x-www-form-urlencoded; charset=utf-8',
			success: function (data) {
				if(data!=null){
					$.each(data, function (index, item) {
						if(slide_cnt%4==1){
							var op5 = 
							'<div class="swiper-container'+con_cnt+'">'+
							'<div class="chart_cont'+con_cnt+' swiper-wrapper">';
							$('.product_chart').append(op5);
						}
						var output5 = '';
						output5 += 
						'<div class="swiper-slide">'+
						'<div class="pr_img">';
						output5 +=
						'<figure>'+
						'<a href="productDetail.pr">'+
						'<img src="/bit_project/image/'+item.img_sum+'">'+
						'</a>'+
						'</figure>';
						output5 +=
						'<div class="rank">'+
						'<strong>'+item.product_num+'</strong>'+
						'</div></div>';
						output5 +=
						'<div class="infor">';
						output5 +=
						'<h3><em>'+item.manufacturer+'</em><strong>'+item.product_name+'</strong></h3>';
						output5 +=
						'<div class="infor_btn">';
						output5 +=
						'<a href="productDetail.pr">상세정보</a>';
						output5 +=
						'<a href="#">위시리스트</a>';
						output5 +=
						'</div></div></div></div>';
						$('.chart_cont'+con_cnt).append(output5);
						if(slide_cnt%4==0){
							var output6 = '</div></div></div>';
							$('.product_chart').append(output6);
							con_cnt++;
						}
						slide_cnt++;
						
						});
						//pno += 1;
						pNum += 8;
						document.getElementById('printNumber').value = pNum;
						
				}else {
					alert('읽어올 데이터가 없습니다.');
				}
				
				
			},
			error: function () {
				alert("ajax통신 실패 !!!");
			}
		});
	}
})



   