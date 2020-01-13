<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$('ul.tabs li').click(function() {
			var tab_id = $(this).attr('data-tab');

			$('ul.tabs li').removeClass('current');
			$('.tab-content').removeClass('current');

			$(this).addClass('current');
			$("#" + tab_id).addClass('current');
		})

	});

</script>
<style>
#content {
	margin-top: 15%;
	text-align: center;
	position: absolute;
	width: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-wrap: nowrap;
}

.content-box {
	position: relative;
	width: 400px;
	height: 280px;
	margin: 0 auto;
	border: 1px solid #cccccc;
	border-radius: 3px;
}

ul.tabs {
	margin: 0px;
	padding: 0px;
	list-style: none;
}

/*탭 선택 전*/
ul.tabs li {
	background: none;
	color: #9f9f9f;
	background: #EFEFEF;
	display: inline-block;
	width: 177px;
	height: 30px;
	cursor: pointer;
	text-align: center;
	padding: 10px;
}
/*탭 선택 시*/
ul.tabs li.current {
	background: #fff;
	color: #000000;
	text-align: center;
	border-bottom: #fff;
}
/*탭 선택 시 박스 안*/
.tab-content {
	display: none;
	background: #fff;
	padding: 15px;
}

.tab-content.current {
	display: inherit;
	margin: 20px;
	padding: 5px;
}

#tab-1 {
	padding-top: 20px;
}


/*이메일 찾기 비밀번호 찾기 텍스트 박스, 버튼*/
.tab-content > .ipt > input {
	height: 18px;
    width: 280px;
    border: 1px solid #cccccc;
    border-radius: 3px;
    padding: 10px;
    margin-bottom: 8px;
}
.find-btn {
	height: 40px;
    width: 302px;
    border: 1px solid #cccccc;
    border-radius: 3px;
    padding: 10px;
    margin-bottom: 8px;
    background: #ea7475;
    color: #fff;
}


   

</style>
</head>
<body>
	<div id="header"></div>
	<div id="content">
		<div class="content-box">

			<ul class="tabs">
				<li class="tab-link current" data-tab="tab-1">이메일 찾기</li>
				<li class="tab-link" data-tab="tab-2">비밀번호 찾기</li>
			</ul>
			<!-- 이메일 찾기 tab -->
			<div id="tab-1" class="tab-content current">
				<div class="ipt">
					<input type="text" name="name" class="checkfield" placeholder="이름">
				</div>
				<div class="ipt">
					<input type="text" name="phoneNum" placeholder="핸드폰번호">
				</div>
				<button type="submit" class="find-btn">이메일 찾기</button>
			</div>
			<!-- 비밀번호 찾기 tab -->
			<div id="tab-2" class="tab-content">
				<div class="ipt">
					<input type="email" id="findId" name="findId" placeholder="아이디 (E-MAIL)" />
				</div>
				<div class="ipt">
					<input type="text" name="name" class="checkfield" placeholder="이름">
				</div>
				<div class="ipt">
					<input type="text" name="phoneNum" placeholder="핸드폰번호">
				</div>
				<button type="submit" class="find-btn">비밀번호 찾기</button>
			</div>


		</div>
	</div>

	<div id="footer"></div>

</body>
</html>