<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<%@ page import = "com.spring.member.MemberVO" %>
<%@ page import = "com.spring.login.LoginController" %>
<%
	String email_param = (String)session.getAttribute("email");


%>
<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-3.4.1.js"></script>
<!-- 폰트어썸 아이콘 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<!-- 웹 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/resources/css/mypage/update.css" rel="stylesheet">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="member_update">
            <div class="member_img">
                 <h1>회원수정</h1>
                 <img src="${pageContext.request.contextPath}/resources/img/profile.png" width=100px height=100px>  
            </div>
            <div class="update_form_wrap">
                 <form id="update_form" name="update_form" action="#" enctype="multipart/form-data" method="POST">
                     <table class="update_table" cellspacing="8px">
                         <tr>
                             <td><p>회원명</p></td>
                             <td><b class="na"><%=email_param %></b></td>
                         </tr>
                         <tr>
                             <td><p>이메일</p></td>
                             <td><b class="na"><%=email_param %></b></td>
                         </tr>
                         <tr>
                            <td><p>닉네임</p></td> 
                            <td><input type="text" class="nickname" placeholder="내용을 입력해주세요"></td>
                            <td><input type="button" value="중복확인" class="button1"></td>
                         </tr>
                         <tr>
                             <td><p>비밀번호</p></td> 
                             <td><input type="password" class="password" placeholder="내용을 입력해주세요"></td>
                             <td><input type="button" value="변경하기" class="button2"></td>
                         </tr>
                         <tr>
                             <td><p>새 비밀번호</p></td> 
                             <td><input type="password" class="new_password" placeholder="새 비밀번호"></td>
                          </tr>
                          <tr>
                              <td></td>
                              <td><input type="password" class="new_password_confirm" placeholder="새 비밀번호 확인"></td>
                          </tr>
                          <tr>
                             <td><p>주소</p></td>    
                             <td><input type="text" class="postal_num" placeholder="우편번호"></td>
                             <td><input type="button" class="button4" value="검색"></td>
                          </tr>
                          <tr>
                             <td></td>
                             <td><input type="text" class="address" placeholder="주소"></td>
                         </tr>
                          <tr>
                              <td></td>
                              <td><input type="text" class="address_detail" placeholder="상세주소"></td>
                          </tr>
                          <tr>
                              <td><p>인스타그램</p></td>
                              <td><input type="text" class="instagram_id"></td>
                          </tr>
                          <tr>
                              <td><b class="add">추가정보</b></td>
                          </tr>
                          <tr>
                              <td><p>자녀의 이름</p></td>
                              <td><input type="text" class="children_name"></td>
                         </tr>
                         <tr>
                             <td><p>자녀 생년월일</p></td>
                             <td><input type="text" class="children_birth"></td>
                         </tr>
                         <tr>
                             <td></td>
                             <td class="update_btn"><input type="button" value="회원정보 수정" class="button3"></td>
                         </tr>   
                     </table>
                 </form>
            </div>
        </div>
</body>
</html>