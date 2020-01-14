<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Share</title>
<link rel="stylesheet" href="<c:url value="/resources/css/share.css" />">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/share.js"></script>

</head>
<body>
	<div style="height: 50px;">
		<%@ include file="/WEB-INF/views/header3.jsp"%>
	</div>
	<div class="container">
		<div id="subject">
			<h1>Share</h1>
			<hr>
		</div>
		<div class="content">
			<div id="info">
				<div id="share">
					<br>
					<h2>Share</h2>
					<p>쉐어받은 물품은 상품리스트에 올라갑니다.</p>
					<p>렌탈시 수익 발생</p>
					<p>배송비 무료</p>
					<p>상품가치가 없을 경우 반송(반송비 고객부담)</p>
				</div>
			</div>

			<div id="share-form">
				<hr>
				<br>
				<h2>신청서 작성</h2>
				<br>
				<form id="form_share" action="share.ms" method="POST">
					<table id="share-info">
						<tr>
							<td>구독자 성명</td>
							<td colspan="2"><input class="field-text" type="text"
								name="name"></td>
						</tr>
						<tr>
							<td>연락처</td>
							<td colspan="2"><input class="field-text" type="text"
								name="phone" width="50px"></td colspan="2">
						</tr>
						<tr>
							<td>계좌번호</td>
							<td><select id="select" name="bank">
									<option value="은행">은행</option>
									<option value="국민">국민</option>
									<option value="우리">우리</option>
									<option value="신한">신한</option>
									<option value="농협">농협</option>
									<option value="IBK">IBK</option>
									<option value="씨티">씨티</option>
							</select> <input class="field-text" type="text" name="account"></td>
						</tr>
						<tr>
							<td>상품명</td>
							<td colspan="2"><input class="field-text" type="text"
								name="goods"></td colspan="2">
						</tr>
						<tr>
							<td>쉐어기간</td>
							<td colspan="2"><input class="field-text" type="text"
								name="share_date"></td colspan="2">
						</tr>
					</table>
					<br>
					<table id="share-chk" style="font-size: 13px">
						<tr>
							<td>발송 후 단순 변심에 의한 레고의 반송은 불가합니다.</td>
							<td><input type="checkbox" name="chk_info" id="chk_info">예,
								확인하였습니다. <b>(필수)</b></td>
						</tr>
						<tr>
							<td colspan="2">담당자가 확인 후 알림메시지 발송</td>
						</tr>
					</table>
					<br> <span>
						<button class="btn" type="submit" id="nextstep">제출</button>
					</span> <input type="hidden" name="to" value="tazo0519@naver.com">
					<!-- 여기에 자신의 이메일 계정 -->
					<input type="hidden" name="from" value="tazo0519@naver.com">
					<!-- 여기에 자신의 이메일 계정 -->
				</form>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div style="height: 50px;">
		<footer>
			<%@ include file="/WEB-INF/views/footer.jsp"%>
		</footer>
	</div>
</body>
</html>