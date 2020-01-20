    $("document").ready(function () {
        var totalData = 0;	// 총 데이터 수
        var dataPerPage = 10;
        var pageCount = 5;
        var currentPage = 1;
        //var currentPage = ${param.page};	
        $.ajax({
        	url: '/bit_project/qnacount.pr',
            type: 'POST',
            dataType: 'json',
            data:{"product_num" : p},
            async:false,
            success: function (data) {             
                totalData = data;
                alert(data);
            
            },
	        error: function () {
				alert("totaldata 획득 실패");
			}
        });
        
        snsData(totalData, dataPerPage, pageCount, currentPage);
        $('.accordion ul li').click(function () {
            if ($(this).children().last().css("display") == 'none') {
                $(this).children().last().show();
            } else {
                $(this).children().last().hide();
            }

        });
    });

    function snsData(totalData, dataPerPage, pageCount, currentPage) {
    	alert(p);
        var allData = { "page": currentPage, "product_num" : p};
        
        $.ajax({
        	url: '/bit_project/qna.pr',
            type: 'POST',
            dataType: 'json',
            async:false,
            data: allData,
            success: function (data) {
                $(".accordion ul").empty();
                //totalData = data.length;               
                if(data.length!=0){
                $.each(data, function (index, item) {
                	
                    var exText = "";
                    exText += "<li>";
                    exText += "<div class='title'>";
                    exText += "<span>" +item.answer+ "</span>";                    
                    exText += "<em>" + item.content + "</em>";
                    exText += "<div class='date'>";
                    exText += "<em>" + item.nickname + "</em>";
                    var date = new Date(item.regist);
                    date = date_to_str(date);
                    exText += "<em>" + date + "</em>";
                    exText += "</div></div>"; //title
                    exText += "<div class='content' style='display:none;'>";
                    exText += "<p class='txt-right'>";
                    exText += "<a href='#' onclick='#'>수정</a>";
                    exText += "<a href='#' onclick='#'>삭제</a>";
                    exText += "</p>"+item.content;
                    exText += "</div></li>";
                    $(".accordion ul").append(exText);
                })
                paging(totalData, dataPerPage, pageCount, currentPage);
                
                }
                else {
                	alert("zz");
                	 var exTextnull = "<li style='text-align:cetner;'>";
                	 exTextnull += "<div>등록된 상품문의가 없습니다.</div>";
                	 exTextnull += "</li>";
                     $(".accordion ul").append(exTextnull);
                }
                
            },
	        error: function () {
				alert("ajax오류");
			}
        });
    }

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


    function paging(totalData, dataPerPage, pageCount, currentPage) {
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
            html += "<a href='javascript:snsData(totalData, dataPerPage, pagecount, " + i + ")' id=" + i + ">" + i + "</a> ";
            //html += "<a href='javascript:snsData(0, 6, 10, " + i + ")' id=" + i + ">" + i + "</a> ";
            
            
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

        	        $(".paginate").html(html);    // 페이지 목록 생성
        	        $(".paginate a").removeClass("page_on");

        	        $(".paginate a#" + currentPage).addClass("page_on"); // 현재 페이지 표시	
        }
      

        $(".paginate a").click(function () {
            var $item = $(this);
            var $id = $item.attr("id");
            var selectedPage = $item.text(); // 번호 클릭.



            if ($id == "one") selectedPage = one;
            if ($id == "prev") selectedPage = prev;
            if ($id == "next") selectedPage = next;
            if ($id == "lastNo") selectedPage = lastNo;
            alert(selectedPage);
            snsData(totalData, dataPerPage, pageCount, selectedPage);
            paging(totalData, dataPerPage, pageCount, selectedPage);// 페이징
            $('.accordion ul li').click(function () {
                if ($(this).children().last().css("display") == 'none') {
                    $(this).children().last().show();
                } else {
                    $(this).children().last().hide();
                }

            });
        })
    }
   
 