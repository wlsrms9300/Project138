$("document").ready(function () {
    var totalData = 0;	// 총 데이터 수
    var dataPerPage = 5;
    var pageCount = 5;
    var currentPage = 1;
    //var currentPage = ${param.page};	
    $.ajax({
    	url: '/bit_project/reviewcount.pr',
        type: 'POST',
        dataType: 'json',
        data:{"product_num" : p},
        async:false,
        success: function (data) {             
            totalData = data;
            $('.reviewcssf').html("("+totalData+")");
        
        },
        error: function () {
			alert("totaldata 획득 실패");
		}
    });
    
    review_snsData(totalData, dataPerPage, pageCount, currentPage);
    $('.review article ul li').click(function () {
        alert('클릭확인');
        if ($(this).children().first().css("-webkit-line-clamp") == 2) {
            $(this).children().first().css("-webkit-line-clamp", "6");
        } else {
            $(this).children().first().css("-webkit-line-clamp", "2");
        }
    });
});

function review_snsData(totalData, dataPerPage, pageCount, currentPage) {
	alert(p);
    var allData = { "page": currentPage, "product_num" : p};
    
    $.ajax({
    	url: '/bit_project/review.pr',
        type: 'POST',
        dataType: 'json',
        async:false,
        data: allData,
        success: function (data) {
            $(".review").empty();
            //totalData = data.length;               
            if(data.length!=0){
            $.each(data, function (index, item) {
                var exText = "";
                exText += "<article>";
                exText += "<ul style='display: flex;'>";
                exText += "<li style='flex: 8.5;'>";
                exText += "<div>"+item.content+"</div>";
                exText += "<span>"+"멤버테이블DB읽어서출력할곳"+"</span>";
                exText += "</li>";
                exText += "<li style='flex: 1.5;'>";
                exText += '<img src="/bit_project/image/'+item.img+'">';
                exText += " </li>";
                exText += "</ul>";
                exText += "<hr style='border: 0.5px solid grey;'>";
                exText += "</article>";
                $(".review").append(exText);
            })
            review_paging(totalData, dataPerPage, pageCount, currentPage);
            
            }
            else {
            	alert("zz");
            	 var exTextnull = "<li style='text-align:cetner;'>";
            	 exTextnull += "<div>등록된 상품리뷰가 없습니다.</div>";
            	 exTextnull += "</li>";
                 $(".review").append(exTextnull);
            }
            
        },
        error: function () {
			alert("ajax오류");
		}
    });
}

function review_paging(totalData, dataPerPage, pageCount, currentPage) {
	alert('페이징의 totaldata'+totalData);
    var totalPageDevide = totalData / dataPerPage;
    var pageGroupDevide = currentPage / pageCount;


    var totalPage = Math.ceil(totalPageDevide);    // 총 페이지 수
    var pageGroup = Math.ceil(pageGroupDevide);    // 페이지 그룹
    
    var last = pageGroup * pageCount;

    if (last > totalPage)
        last = totalPage;
    var first = last - (pageCount - 1);
    if (first <= 0) {
        first = 1;
    }
    var next = last + 1; // 다음
    var prev = first - 1; // 이전
    var one = 1; // 맨 처음 
    var lastNo = totalPage; // 맨 끝

    var html = "";

    if (prev > 0) {
        html += "<a href=# id='one'>&lt;&lt;&nbsp;&nbsp;</a> ";
        html += "<a href=# id='prev'>&lt;&nbsp;&nbsp;</a> ";

    }
    for (var i = first; i <= last; i++) {
        //html += "<a href='#' id=" + i + ">" + i + "</a> ";
        html += "<a href='javascript:review_snsData(totalData, dataPerPage, pagecount, " + i + ")' id=" + i + ">" + i + "</a> ";
        //html += "<a href='javascript:review_snsData(0, 6, 10, " + i + ")' id=" + i + ">" + i + "</a> ";
        
        
    }
    /*
    for(var i=first; i <= last; i++){
	html += "<a href='/example.do?page=" + i + "' id=" + i + ">" + i + "</a> ";
    }
    */
    if(totalPage==0){
    	
    }else {
    	  if (last < totalPage)
    	        html += "<a href=# id='next'>&gt;&nbsp;&nbsp;</a>";
    	        html += "<a href='javascript:void(0);' id='lastNo'>&gt;&gt;&nbsp;&nbsp;</a> ";

    	        $(".review_paginate").html(html);    // 페이지 목록 생성
    	        $(".review_paginate a").removeClass("page_on");

    	        $(".review_paginate a#" + currentPage).addClass("page_on"); // 현재 페이지 표시	
    }
  

    $(".review_paginate a").click(function () {
        var $item = $(this);
        var $id = $item.attr("id");
        var selectedPage = $item.text(); // 번호 클릭.



        if ($id == "one") selectedPage = one;
        if ($id == "prev") selectedPage = prev;
        if ($id == "next") selectedPage = next;
        if ($id == "lastNo") selectedPage = lastNo;
        alert(selectedPage);
        review_snsData(totalData, dataPerPage, pageCount, selectedPage);
        review_paging(totalData, dataPerPage, pageCount, selectedPage);// 페이징
       
    })
}

