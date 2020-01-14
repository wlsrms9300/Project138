<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/css/b2b_join_form.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/js/b2b.js"></script>


</head>
<body>
  <h1>모달</h1>
     <!-- 버튼 -->
     <button id="partner-join-btn">파트너 가입신청</button>
     <button id="nursery-join-btn">어린이집 가입신청</button>
    
     <!-- 파트너 가입신청 모달-->
     <div class="modal" id="partner-modal">
         <div class="modal-content">
             <span class="close-button" id="pclose-button">&times;</span>
             <h1 class="title">파트너 가입신청</h1>
             <h5 class="sentence">아래 사항을 작성하여 보내주시면 파트너 담당자가<br />
                확인하여 연락 드리도록 하겠습니다.</h5>
             <hr>
             <form action="/" method="POST">
                
                <h3 class="subtitle">입점 기본 자격 요건</h3>
                <h5 class="sentence">적용되는 사항들을 선택해주세요.</h5>
                <div class="checkbox">
                    <input type="checkbox" id="cb1" class="cb"><label for="cb1">사업자등록(개인/법인 모두 가능)</label>
                    <input type="checkbox" id="cb2" class="cb"><label for="cb2">통신판매업 신고</label>
                </div>
                
               <input type="text" name="contact-address" placeholder="연락처 및 이메일을 알려주세요" required="required">
       
               <input type="text" name="product-price" placeholder="판매하고 싶은 상품과 가격을 알려주세요" required="required">
               <input type="text" name="website" placeholder="홈페이지를 알려주세요">
               <input type="text" name="address" placeholder="회사 및 상점 주소를 알려주세요">

               <div class="box-file-input"><label><input type="file" name="ev_display_<?php echo $k; ?>" class="file-input" accept="image/*"></label><span class="filename">대표사진을 선택해주세요.</div>
                <div class="button-box">
                    <input type="button" id="pcancel" value="취소">
                    <input type="submit" id="psubmit" value="보내기">
                </div>
             </form>
         </div> 
     </div>

	<!--어린이집 가입신청 모달-->
     <div class="modal" id="nursery-modal">
         <div class="modal-content">
             <span class="close-button" id="nclose-button">&times;</span>
             <h1 class="title">어린이집 가입신청</h1>
             <h5 class="sentence">아래 사항을 작성하여 보내주시면 담당자가<br />
                확인하여 연락 드리도록 하겠습니다.</h5>
             <hr>
             <form action="/" method="POST">
                
                <h3 class="subtitle">기본 자격 요건</h3>
                <h5 class="sentence">적용되는 사항들을 선택해주세요.</h5>
                <div class="checkbox">
                    <input type="checkbox" id="cb3" class="cb"><label for="cb3">사업자등록(개인/법인 모두 가능)</label>
                </div>
                <br/>
               <input type="text" name="contact-address" placeholder="연락처 및 이메일을 알려주세요" required="required">
               <input type="text" name="address" placeholder="어린이집 주소를 알려주세요">
               <input type="text" name="website" placeholder="홈페이지를 알려주세요">
               <div class="box-file-input"><label><input type="file" name="ev_display_<?php echo $k; ?>" class="file-input" accept="image/*"></label><span class="filename">대표사진을 선택해주세요.</div>
               <br />
               <div class="checkbox">
                  <input type="checkbox" id="cb4" class="cb"><label for="cb4">구독서비스 이용을 원할 시 체크해주세요.</label>
               </div>
                <div class="button-box">
                    <input type="button" id="ncancel" value="취소">
                    <input type="submit" id="nsubmit"  value="보내기">
                </div>
             </form>
         </div> 
     </div>     
     
     
<script type="text/javascript">
/*파트너*/
var modal = document.querySelector("#partner-modal");
var ptrigger = document.querySelector("#partner-join-btn");
var pcloseButton = document.querySelector("#pclose-button");
var pcancelButton = document.querySelector("#pcancel");

function togglePModal() {
	modal.classList.toggle("show-modal");
}

ptrigger.addEventListener("click", togglePModal);
pcloseButton.addEventListener("click", togglePModal);
pcancel.addEventListener("click", togglePModal);

/*어린이집*/
var modal2 = document.querySelector("#nursery-modal");
var ntrigger = document.querySelector("#nursery-join-btn");
var ncloseButton = document.querySelector("#nclose-button");
var ncancelButton = document.querySelector("#ncancel");


function toggleNModal() {
	modal2.classList.toggle("show-modal");
}

/*
document.getElementById("partner-join-btn").onclick = function() {
	togglePModel();
}
*/
document.getElementById("nursery-join-btn").onclick = function() {
	toggleNModal();
}

function windowOnClick(event) {
	if (event.target === modal) {
		togglePModal();
	}
}


ncloseButton.addEventListener("click", toggleNModal);
ncancel.addEventListener("click", toggleNModal);
window.addEventListener("click", windowOnClick);

</script>

</body>


</html>