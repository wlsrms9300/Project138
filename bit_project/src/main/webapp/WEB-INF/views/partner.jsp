<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Partner</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/partner.css" />">

<script src="http://code.jquery.com/jquery-3.4.1.js">
	
</script>
<script src="${pageContext.request.contextPath}/resources/js/partner.js"></script>

<style>
#content {
	width: 1280px;
	margin: 0 auto;
}

#logo {
	padding: 40px 0 40px 0;
	background-color: #ffb0b1;
	color: white;
	width: 100%;
	text-align: center;
}

#category {
	margin-left: 30px;
	margin-top: 100px;
}

#select_box {
	width: 150px;
	height: 35px;
	font-size: 16px;
}

/* img{
            width: 45%;
            height: auto;
            display: inline-block;
            margin: 30px 30px 0 30px;
            -webkit-transform:scale(1);
            -moz-transform:scale(1);
            -ms-transform:scale(1); 
            -o-transform:scale(1);  
            transform:scale(1);
            -webkit-transition:.3s;
            -moz-transition:.3s;
            -ms-transition:.3s;
            -o-transition:.3s;
            transition:.3s;  
            
        }

        img:hover{
            opacity: 0.5;
            -webkit-transform:scale(1.1);
            -moz-transform:scale(1.1);
            -ms-transform:scale(1.1);   
            -o-transform:scale(1.1);    
            transform:scale(1.1);
        } */
@media ( max-width : 600px) {
	#content {
		width: auto;
	}
	#logo {
		width: 100%;
	}
	#category {
		margin: 15% 0 5% 2%;
		height: 50px;
	}
	.image-wrapper {
		display: block;
		justify-content: center;
		align-items: center;
		flex-wrap: nowrap;
	}
	img {
		width: 100%;
		height: auto;
		margin: 0 auto;
	}
	.snip1273 {
		width: 95%;
		margin: 15px 9px 15px;
		color: #ffffff;
		background-color: #000000;
	}
	.snip1273 figcaption {
		position: absolute;
		font-size: 11px;
		padding: 17px 20px;
	}
	.snip1273 a {
		width: 38px;
		color: #ffffff;
		position: absolute;
		top: 32px;
		left: 300px;
		font-size: 20px;
	}
	
	.snip1273 h3 {
		font-size: 18px;
		margin: 0;
	}
	
	.snip1273 p {
		font-size: medium;
	}
	
	
}
</style>
</head>

<body>
	<div style="height: 50px;">
		<header>
			<%@ include file="/WEB-INF/views/header3.jsp"%>
		</header>
	</div>
	<div id="container">

		<div id="logo">
			<h1>파트너</h1>
		</div>

		<div id="content">
			<div id="category">
				<form action="">
					<select id="select_box" onchange="button_click()">
						<option value="전체선택">전체선택</option>
						<option value="장난감">장난감</option>
						<option value="유아용품">유아용품</option>
						<option value="머저리">머저리</option>
					</select>
					<!-- <input type = "button" class = "btn" id = "category_select" onclick = "button_click()" value = "검색" /> -->
					<!-- <script type="text/javascript" src="partner.js"></script> -->
					<hr align="left" width="96.7%">
				</form>
			</div>
			<div class="partner_chart"></div>

		</div>

	</div>
	<div style="height: 50px;">
		<footer>
			<%@ include file="/WEB-INF/views/footer.jsp"%>
		</footer>
	</div>

</body>

</html>