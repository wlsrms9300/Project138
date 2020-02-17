<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.spring.login.*" %>
<%
	String nickname = (String)session.getAttribute("nickname");
	String img = (String)session.getAttribute("img");	
	LoginVO userDetail = (LoginVO)session.getAttribute("userDetail");
	
	if((String)session.getAttribute("email") == null || !(userDetail.getUsergroup().equals("admin"))) {
		out.println("<script>");
		out.println("alert('관리자만 접근할수있습니다')");
		out.println("location.href='main.ma'");
		out.println("</script>");
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Lumino - Widgets</title>
	<link href="${pageContext.request.contextPath}/resources/css/admin/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/admin/font-awesome.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/admin/datepicker3.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/admin/styles.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/font-awesome.css" rel="stylesheet">
    <script src="https://unpkg.com/bootstrap-table@1.15.5/dist/bootstrap-table.min.js"></script><!-- 주석 가능 -->
    <script src="https://unpkg.com/bootstrap-table@1.15.5/dist/locale/bootstrap-table-zh-CN.min.js"></script><!-- 주석 가능 -->
	<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="http://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script> <!-- 테이블 js -->
	<link href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" rel="stylesheet"/> <!-- 테이블 css -->
	<style>
	@charset "utf-8";
	@font-face { font-family: 'S-CoreDream-4Regular'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-4Regular.woff') format('woff'); font-weight: normal; font-style: normal; }
	* {font-family: 'S-CoreDream-4Regular';}
   .modal1 {text-align: center; display: block;margin: 0 auto;font-size: 16px;color: #999;z-index:2;}
     h1.title {font-size: 30px;color: #ea7475;}
     label {width:300px;display: inline-block; margin-top: 0px; }
     form {margin: 0 auto;width: 600px;}
     .modal1 > .modal1-content > form > input{ width: 300px; height: 27px;background-color: #efefef;border-radius: 5px;border: 1px solid #dedede; padding: 10px;margin-top: 3px;font-size: 0.9em;color: #3a3a3a;margin-bottom: 5px;}
     .modal1 > .modal1-content > form > input:focus{ border: 1px solid #97d6eb;}
     .modal1 {position: absolute;left: 0;top: 0;width: 70%;height: 100%;background-color: rgba(0, 0, 0, 0.5);opacity: 0;visibility: hidden;transform: scale(1.1);transition: visibility 0s linear 0.25s, opacity 0.25s 0s, transform 0.25s;}
     .modal1-content {position: absolute;width:70% !important; height:70%;top: 40%;left: 60%;transform: translate(-50%, -50%);background-color: white;padding: 1rem 1.5rem;width: 500px;border-radius: 0.5rem;margin:0 auto;}
     .close-button1 { float: right; width: 1.5rem;line-height: 1.5rem; text-align: center; cursor: pointer; border-radius: 5px; background-color: lightgray; }
     .close-button1:hover {background-color: darkgray;}
     .show-modal1 { opacity: 1;  visibility: visible;  transform: scale(1.0); transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s;  width: 100%;  height: 900px;}
	.imggroup {width:100%; height:200px;}
	.imggroup img{width:33%; height:200px;}
     
     
     
     .modal2 {text-align: center; display: block;margin: 0 auto;font-size: 16px;color: #999;z-index:2;}
     h1.title {font-size: 30px;color: #ea7475;}
     .modal2 > .modal2-content > form > input, .modal2 > .modal2-content > form > .button-box > input { width: 300px; height: 27px;background-color: #efefef;border-radius: 5px;border: 1px solid #dedede; padding: 10px;margin-top: 3px;font-size: 0.9em;color: #3a3a3a;margin-bottom: 5px;}
     .modal2 > .modal2-content > form > input:focus{ border: 1px solid #97d6eb;}
     .modal2 {position: absolute;left: 0;top: 0;width: 70%;height: 100%;background-color: rgba(0, 0, 0, 0.5);opacity: 0;visibility: hidden;transform: scale(1.1);transition: visibility 0s linear 0.25s, opacity 0.25s 0s, transform 0.25s;}
     .modal2-content {position: absolute;width:70% !important; height:70%;top: 40%;left: 60%;transform: translate(-50%, -50%);background-color: white;padding: 1rem 1.5rem;width: 500px;border-radius: 0.5rem;margin:0 auto;}
     .button-box {text-align: center;}
     .close-button2 { float: right; width: 1.5rem;line-height: 1.5rem; text-align: center; cursor: pointer; border-radius: 5px; background-color: lightgray; }
     .close-button2:hover {background-color: darkgray;}
     .show-modal2 { opacity: 1;  visibility: visible;  transform: scale(1.0); transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s;  width: 100%;  height: 900px;}
	 #nsubmit{ width: 127px;  height: 48px; text-align: center; border: none;margin-top: 20px;  cursor: pointer;}
     #nsubmit:hover{color: #fff;background-color: #ea7475;opacity: 0.9;}
	</style>
	
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
	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#"><span>Lumino</span>Admin</a>
			</div>
		</div><!-- /.container-fluid -->
	</nav>
	
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<div class="profile-sidebar">
			<div class="profile-userpic">
				<img src="<%=img %>" class="img-responsive" alt="" style="box-sizing:border-box; border-radius:100px; border:2px solid #EA7475;">
			</div>
			<div class="profile-usertitle">
				<div class="profile-usertitle-status"></div>
				<div class="profile-usertitle-name"><%=nickname %></div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="divider"></div>
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
		</form>
		<ul class="nav menu">
			<!--Dashboard-->
			<li><a href="index.se"><em class="fa fa-dashboard">&nbsp;</em> Dashboard</a></li>

			<!--회원관리-->
			<li class="parent "><a data-toggle="collapse" href="#sub-member-1">
				<em class="fa fa-navicon">&nbsp;</em> 회원관리 <span data-toggle="collapse" href="#sub-member-1" class="icon pull-right"><em class="fa fa-plus"></em></span>
				</a>
				<ul class="children collapse" id="sub-member-1">
					<li><a class="" href="member_admin.se">
						<span class="fa fa-arrow-right">&nbsp;</span> Member
					</a></li>
					<li><a class="" href="member_group.se">
						<span class="fa fa-arrow-right">&nbsp;</span> Member Group
					</a></li>
				</ul>
			</li>
			
			<!--어린이집 관리-->
			<li><a href="kindergarten_admin.se"><em class="fa fa-bar-chart">&nbsp;</em> 어린이집 관리</a></li>

			<!--파트너 관리-->
			<li><a href="partner_admin.se"><em class="fa fa-bar-chart">&nbsp;</em> 파트너 관리</a></li>

			<!--쉐어 관리-->
			<li class="parent active"><a data-toggle="collapse" href="#sub-share-1">
				<em class="fa fa-navicon">&nbsp;</em> 쉐어관리 <span data-toggle="collapse" href="#sub-share-1" class="icon pull-right"><em class="fa fa-plus"></em></span>
				</a>
				<ul class="children collapse in show" id="sub-share-1">
					<li><a class="" href="share.se">
						<span class="fa fa-arrow-right">&nbsp;</span> 쉐어 수락/거절
					</a></li>
					<li><a class="visited" href="shareOK.se">
						<span class="fa fa-arrow-right">&nbsp;</span> 쉐어 상품 등록
					</a></li>
						<li><a class="" href="share_settle.se">
						<span class="fa fa-arrow-right">&nbsp;</span> 쉐어 정산 목록
					</a></li>
				</ul>
			</li>
				<!--  반납&&배송 -->			
			<li class="parent "><a data-toggle="collapse" href="#sub-return-1">
				<em class="fa fa-navicon">&nbsp;</em> 반납확정&&배송관리 <span data-toggle="collapse" href="#sub-return-1" class="icon pull-right"><em class="fa fa-plus"></em></span>
				</a>
				<ul class="children collapse" id="sub-return-1">
					<li><a class="" href="return.se">
						<span class="fa fa-arrow-right">&nbsp;</span> 반납확정 wish
					</a></li>
					<li><a class="" href="returnpick.se">
						<span class="fa fa-arrow-right">&nbsp;</span> 픽업 시 반납완료
					</a></li>
				</ul>
			</li>
			<!-- 결제 관리 -->
			<li><a href="payment.se"><em class="fa fa-bar-chart">&nbsp;</em> 결제 관리</a></li>

		</ul>
	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="index.se">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">Share</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Share</h1>
			</div>
		</div><!--/.row-->

        <div class="row">
            <div class="col-lg-12">
				<div class="board_list_wrap">
					<table id="foo-table" class="foo-ex">
						<h2>쉐어 관리</h2>
						<thead>
							<tr>
								<th>Email</th>
								<th>Product Name</th>
								<th>Total Amount</th>
								<th>consignment_start_date</th>
								<th>consignment_end_date</th>
								<th>연식, 상품내용</th>
								<th>상세보기</th>
								<th>상품등록하기</th>
							</tr>
						</thead>
						<tbody id="output">
							
						</tbody>
					</table>
				</div>
            </div>
        </div>
	</div>	<!--/.main-->
	  <div class="modal1" id="nursery-modal">
         <div class="modal1-content">
             <span class="close-button1" id="nclose-button1" onclick="asdad();">&times;</span> 
             <h1 class="title">쉐어 상세보기</h1>
             <hr>
           <form name="frmData" id="frmData" method="post">
				<label>waiting_num</label><input type="number" name="waiting_num" id="waiting_num1" value="" />
				<label>email</label><input type="text" name="email" id="email1" value="" />
				<label>name</label><input type="text" name="name" id="name1" value="" />
				<label>product_name</label><input type="text" name="product_name" id="product_name1" value="" />
				<label>amount</label><input type="number" name="amount" id="amount1" value="" />
				<label>share_content</label><input type="text" name="share_content" id="share_content1" value="" />
				<input type="hidden" name="share_img1" id="share_img11" value="" />
				<input type="hidden" name="share_img2" id="share_img21" value="" />
				<input type="hidden" name="share_img3" id="share_img31" value="" />
				<label>bank</label><input type="text" name="bank" id="bank1" value="" />
				<label>account</label><input type="text" name="account" id="account1" value="" />
		</form>
		<div class="imggroup">
				<img id="detailimg1" src="" />
				<img id="detailimg2" src="" />
				<img id="detailimg3" src="" />
				</div>
         </div> 
     </div>   

	<div class="modal2" id="padd-modal">
         <div class="modal2-content">
             <span class="close-button2" id="nclose-button" onclick="padd();">&times;</span> 
             <h1 class="title">쉐어 상세보기</h1>
             <hr>
            <form id="product_add_form" class="product-form" name="product_add_form" method="POST" enctype="multipart/form-data">
				<label>waiting_num</label><input type="number" name="waiting_num" id="waiting_num2" value="" />
				<label>email</label><input type="text" name="email" id="email2" value="" />
				<label>name</label><input type="text" name="name" id="name2" value="" />
				<label>product_name</label><input type="text" name="product_name" id="product_name2" value="" />
				<label>amount</label><input type="number" name="total_amount" id="amount2" value="" />
				<label>share_content</label><input type="text" name="share_content" id="share_content2" value="" />
				<input type="hidden" name="share_img1" id="share_img12" value="" />
				<input type="hidden" name="share_img2" id="share_img22" value="" />
				<input type="hidden" name="share_img3" id="share_img32" value="" />
				<label>bank</label><input type="text" name="bank" id="bank2" value="" />
				<label>account</label><input type="text" name="account" id="account2" value="" />
				<label>manufacturer</label><input type="text" name="manufacturer" placeholder="제조사" />
				<label>product_content</label><input type="text" name="product_content" placeholder="상품상세" value=""/>
				<label>consignment_start_date</label><input type="text" name="consignment_start_date" id="consignment_start_date" value=""/>
                <label>consignment_end_date</label><input type="text" name="consignment_end_date" id="consignment_end_date" value=""/>
				<select name="category_l">
                        <option selected value="실버">실버</option>
                        <option value="골드">골드</option>
                        <option value="플레티넘">플레티넘</option>
                        <option value="개인쉐어">개인쉐어</option>
                    </select>
                    <select name="category_m">
                        <option selected value="04">0~4</option>
                        <option value="57">5~7</option>
                    </select>
                    <select name="category_s">
                        <option selected value="과학박스">과학박스</option>
                        <option value="자동차">자동차</option>
                        <option value="로보트">로보트</option>
                        <option value="진근박스">진근박스</option>
               </select>
               
                 <div class="button-box">
                 <input type="button" id="nsubmit" value="[상품등록하기]" onclick="prAdd('shareAddProcess.pr')" >            	
                </div>
                 
		</form>
     </div>
<script src="${pageContext.request.contextPath}/resources/js/admin/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/admin/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/admin/chart.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/admin/chart-data.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/admin/easypiechart.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/admin/easypiechart-data.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/admin/bootstrap-datepicker.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/admin/custom.js"></script>


<script src="https://code.jquery.com/jquery-3.3.1.min.js"
    integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
    crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous"></script>
<script src="https://unpkg.com/bootstrap-table@1.15.5/dist/bootstrap-table.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/admin/shareOK.js"></script>
</body>
</html>
