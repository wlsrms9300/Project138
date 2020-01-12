<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-3.4.1.js"></script>
<script src="http://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script> <!-- 테이블 js -->
<link href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" rel="stylesheet"/> <!-- 테이블 css -->

<!-- 폰트어썸 아이콘 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<!-- 웹 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/resources/css/mypage/board.css" rel="stylesheet">

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="board_list_wrap">
			
            <h2>자유게시판</h2>		
            <table class="board">
                <colgroup>
                    <col width="10%" />
                    <col width="20%" />
                    <col width="auto" />
                    <col width="15%" />
                    <col width="10%" />
                </colgroup>
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>구분</th>
                        <th>제목</th>
                        <th>등록일</th>
                        <th>조회수</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>구분1</td>
                        <td><a href="#">제목입니다</a></td>
                        <td>2020.01.10</td>
                        <td>1000</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>구분2</td>
                        <td><a href="#">제목입니다</a></td>
                        <td>2020.01.10</td>
                        <td>1000</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>구분3</td>
                        <td><a href="#">제목입니다</a></td>
                        <td>2020.01.10</td>
                        <td>1000</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>구분4</td>
                        <td><a href="#">제목입니다</a></td>
                        <td>2020.01.10</td>
                        <td>1000</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>구분5</td>
                        <td><a href="#">제목입니다</a></td>
                        <td>2020.01.10</td>
                        <td>1000</td>
                    </tr>
                </tbody>
            </table>
        </div>
</body>
</html>