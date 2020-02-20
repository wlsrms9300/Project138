<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.spring.login.LoginVO" %>
<%@ page import="java.util.*, com.spring.payment.*" %>
<%
	LoginVO userDetail_subs = (LoginVO)session.getAttribute("userDetail");
	String email_subs = (String)session.getAttribute("email");
	
	SubscriptionVO sub_subs = new SubscriptionVO();
	if(request.getAttribute("subvo") != null) {
		sub_subs = (SubscriptionVO)request.getAttribute("subvo");
	}
	
	String state_subs = null;
	if(userDetail_subs.getSubscribe().equals("Y")) {
		state_subs = sub_subs.getState();
	}
%>
<!DOCTYPE html>
<html>
<script src="http://code.jquery.com/jquery-3.4.1.js"></script>
<!-- 폰트어썸 아이콘 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<!-- 웹 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/resources/css/mypage/subscribe.css" rel="stylesheet">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="subscribe_wrap">
                <h2>구독</h2>
                <div class="subscribe_block">
                  <% if(userDetail_subs.getSubscribe().equals("N")) { %>
                    <div class="subscribe_content_1">
                        <b>미구독</b><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;정기구독을 이용해보세요</p>
                    </div>
                    <div class="subscribe_content_2">
                        <a href="subscribestep1.me"><b>구독하기 ></b></a>
                    </div>
                  <% } else { %>
                  <% if(state_subs.equals("구독취소")) { %>
                   <div class="subscribe_content_1">
                        <b>구독중</b><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;서비스를 이용중입니다</p>
                    </div>
                    <% } else { %>               
                    <div class="subscribe_content_1">
                        <b>구독중</b><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;서비스를 이용중입니다</p>
                    </div>
                    <div class="subscribe_content_2">
                        <a href="#" onclick="subCancel('<%=email_subs%>');" ><b>구독취소 ></b></a>
                    </div>
                  <% }} %>
                </div>
                
                <div class="pay_block">
                    <h3>자동 결제 정보</h3>
                    <table>
                        <tr class="line">
                            <th>결제일</th>
                            <th>등급</th>
                         	<th>포인트차감</th>
                            <th>결제금액</th>
                            <th>상태</th>
                        </tr>                   
                    </table>
                     <div class="paginate1" style="text-align:center; margin-top: 10px;"></div>
                </div>
                <div class="product_history">
                    <h3>히스토리</h3>
                    <table>
                        <tr class="line">
                            <th colspan="1">기간</th>
                            <th colspan="2">상품명</th>
                            <th colspan="2">상태</th>
                        </tr>
                    </table>
                    <div class="paginate2" style="text-align:center; margin-top: 10px;"></div>
                </div>
           
            </div>
            

<script type="text/javascript">
function subCancel(email) {
       if (confirm("구독 취소 신청을 하시겠습니까?")) { //Y
       	$.ajax({
				url:'/bit_project/mypage_subscribe_cancel.my',
				type: 'POST',
				data:{'email' : email},
				dataType: "json",
				contentType: 'application/x-www-form-urlencoded; charset=utf-8',
				success: function(retVal) {
					if (retVal.res == "OK") {
						alert("구독이 취소 신청이 완료되었습니다.");
					}
					else {
						alert("구독 취소 신청 실패");
					}
				},
				error:function(request,status,error){
			    		alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
				}
       	}); //ajax
       } else { //N
       		alert("구독 취소신청을 취소하였습니다.");
       		return false;
		}
 }
 
</script>
</body>
</html>