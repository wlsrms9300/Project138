<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-3.4.1.js"></script>

<!-- 폰트어썸 아이콘 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<!-- 웹 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/resources/css/mypage/board.css" rel="stylesheet">
<script src="http://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script> <!-- 테이블 js -->
<link href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" rel="stylesheet"/> <!-- 테이블 css -->

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script type="text/javascript">
    $(function($) {
        var lang_kor = {
        "decimal" : "",
        "emptyTable" : "데이터가 없습니다.",
        "info" : "_START_ - _END_ (총 _TOTAL_ 명)",
        "infoEmpty" : "0명",
        "infoFiltered" : "(전체 _MAX_ 명 중 검색결과)",
        "infoPostFix" : "",
        "thousands" : ",",
        "lengthMenu" : "_MENU_ 개씩 보기",
        "loadingRecords" : "로딩중...",
        "processing" : "처리중...",
        "search" : "검색 : ",
        "zeroRecords" : "검색된 데이터가 없습니다.",
        "paginate" : {
            "first" : "첫 페이지",
            "last" : "마지막 페이지",
            "next" : "다음",
            "previous" : "이전"
        },
        "aria" : {
            "sortAscending" : " :  오름차순 정렬",
            "sortDescending" : " :  내림차순 정렬"
        }
    };


        $('#foo-table').DataTable( {
        	
            language:lang_kor
        });  
    });
</script>


<body>
	<div class="board_list_wrap">
		<div id="board_history">
			<div class="board_history_content">
				<b>활동내역</b>
			</div>
			<div class="board_history_btn">
				<b>+</b>
			</div>
		</div>
		<div class="history_drop">
			<table id="history_drop_table">
				<tr>
					<td style="text-align:left;">마지막 접속일 :</td>
					<td>2020.01.12</td>
					<td>최근 글 등록일 :</td>
					<td>2020.01.12</td>
				</tr>
				<tr>
					<td style="text-align:left;">게시글 :</td>
					<td>5</td>
					<td>댓글 :</td>
					<td>20</td>
				</tr>
				<tr>
					<td style="text-align:left;">후기 :</td>
					<td>20</td>
					<td>스크랩 :</td>
					<td>20</td>
				</tr>
			</table>
		</div>
        
    	<table id="foo-table" class="foo-ex">
    		<h2>자유게시판</h2>
			<thead>
            	<tr>
                	<th>No</th>
                	<th>글제목</th>
                	<th>등록일</th>
                	<th>조회수</th>
            	</tr>        
			</thead>
			<tbody>
				<tr><td>1</td><td>책을</td><td>2020.01.13</td><td>20</td></tr>
				<tr><td>2</td><td>꾸준히</td><td>2020.01.13</td><td>20</td></tr>
				<tr><td>3</td><td>읽어요</td><td>2020.01.13</td><td>12</td></tr>
				<tr><td>4</td><td>비싼가</td><td>2020.01.13</td><td>10</td></tr>
				<tr><td>5</td><td>인가요</td><td>2020.01.13</td><td>25</td></tr>
				<tr><td>6</td><td>오백원</td><td>2020.01.13</td><td>30</td></tr>
				<tr><td>7</td><td>한권은</td><td>2020.01.13</td><td>20</td></tr>
				<tr><td>8</td><td>안난다</td><td>2020.01.13</td><td>33</td></tr>
				<tr><td>9</td><td>끝이</td><td>2020.01.13</td><td>10</td></tr>
				<tr><td>10</td><td>읽어도</td><td>2020.01.13</td><td>55</td></tr>
				<tr><td>99</td><td>꾸준히</td><td>2020.01.13</td><td>88</td></tr>
			</tbody>
    	</table>
     </div>
</body>
</html>