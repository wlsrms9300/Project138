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
<style>
#container {
	width: 1280px;
	margin: 0 auto;
}

#logo {
	padding: 40px 0 40px 0;
	background-color: #EA7475;
	color: white;
	width: 100%;
	text-align: center;
}

#category {
	margin-left: 30px;
}

#select {
	width: 150px;
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
	#container {
		width: auto;
	}
	#logo {
		width: 100%;
	}
	#category {
		margin: 5%;
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
		width: 85%;
		color: #ffffff;
		background-color: #000000;
	}
	.snip1273 figcaption {
		position: absolute;
		font-size: 11px;
		padding: 25px 20px;
	}
	.snip1273 a {
		color: #ffffff;
		position: absolute;
		top: 35px;
		right: 20px;
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
			<h1>Partner</h1>
		</div>
		<br> <br>
		<div id="content">
			<div id="category">
				<br> <br> <select id="select">
					<option value="a">a</option>
					<option value="b">b</option>
					<option value="c">c</option>
					<option value="d">d</option>
					<option value="e">e</option>
				</select> <br> <br> <br> <br>
			</div>

			<figure class="snip1273">
				<img src="./resources/img/partner01.jpg">
				<figcaption>
					<h3>Hello</h3>
					<p>mutherfucker</p>
					<br> <a href="https://www.naver.com/" target="_blank"
						style="text-align: right;">GO!</a>
				</figcaption>

			</figure>
			<figure class="snip1273">
				<img src="./resources/img/partner02.jpg">
				<figcaption>
					<h3>Hello</h3>
					<p>mutherfucker</p>
					<br> <a href="https://www.daum.net/" target="_blank"
						style="text-align: right;">GO!</a>
				</figcaption>
			</figure>
			<figure class="snip1273">
				<img src="./resources/img/partner03.PNG">
				<figcaption>
					<h3>Hello</h3>
					<p>mutherfucker</p>
					<br> <a href="https://www.naver.com/" target="_blank"
						style="text-align: right;">GO!</a>
				</figcaption>
			</figure>
			<figure class="snip1273">
				<img src="./resources/img/partner04.PNG">
				<figcaption>
					<h3>Hello</h3>
					<p>mutherfucker</p>
					<br> <a href="https://www.daum.net/" target="_blank"
						style="text-align: right;">GO!</a>
				</figcaption>
			</figure>
			<figure class="snip1273">
				<img src="./resources/img/partner05.jpg">
				<figcaption>
					<h3>Hello</h3>
					<p>mutherfucker</p>
					<br> <a href="https://www.naver.com/" target="_blank"
						style="text-align: right;">GO!</a>
				</figcaption>
			</figure>
			<figure class="snip1273">
				<img src="./resources/img/partner06.jpg">
				<figcaption>
					<h3>Hello</h3>
					<p>mutherfucker</p>
					<br> <a href="https://www.daum.net/" target="_blank"
						style="text-align: right;">GO!</a>
				</figcaption>
			</figure>
			
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
		</div>

	</div>
	<div style="height: 50px;">
		<footer>
			<%@ include file="/WEB-INF/views/footer.jsp"%>
		</footer>
	</div>
</body>

</html>