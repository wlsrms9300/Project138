<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-3.4.1.js"></script>
<!-- 폰트어썸 아이콘 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<!-- 웹 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/resources/css/mypage/bye.css" rel="stylesheet">

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="member_bye">
            <h2>회원탈퇴</h2>
            <form id="pass_confirm_form" name="pass_confirm_form" method="POST" action="#">
            <div class="pass_confirm">
                <table>
                    <tr class="pass_line">
                        <th>비밀번호</th>
                        <th><input type="password" class="password1" placeholder="비밀번호 입력"></th>
                    </tr>
                    <tr class="pass_line">
                        <th>비밀번호 확인</th>
                        <th><input type="password" class="password2" placeholder="비밀번호 확인"></th>            
                    </tr>
                </table>
            </div>
            <div class="content">
                <p>- 포인트, 적립금, 회원등급 등의 정보는 모두 삭제됩니다.</p><br>
                <p>- 게시판의 게시글, 댓글 등의 정보는 삭제되지 않습니다.</p><br>
                <p>&nbsp;&nbsp;&nbsp;(탈퇴 전 직접 삭제)</p>
            <div class="content_block"></div>
            </div>
            <div class="content_confirm">
                <input type="radio" name="confirm"><h5>안내사항을 모두 확인하였으며, 이에 동의합니다.</h5><br>
                <input type="button" value="회원탈퇴" class="member_button" onclick="location.href='mypage_bye_confirm.jsp'">
            </div>
            </form>
        </div>
</body>
</html>