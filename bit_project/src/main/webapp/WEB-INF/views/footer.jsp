<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <!-- 폰트어썸 아이콘 -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

 <!-- 페이스북 메타 태그 -->
 <meta property="og:title" content="" />
 <meta property="og:url" content="https://" />
 <meta property="og:image" content="https://.jpg" />
 <meta property="og:description" content="" />

 <!-- 트위터 메타 태그 -->
 <meta name="twitter:card" content="summary">
 <meta name="twitter:title" content="">
 <meta name="twitter:url" content="https:///">
 <meta name="twitter:image" content="https://.jpg">
 <meta name="twitter:description" content="">

 <!-- 웹 폰트 -->
 <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean"
     rel="stylesheet">

<link href="${pageContext.request.contextPath}/resources/css/footer.css" rel="stylesheet" type="text/css" />

<!-- 모달 -->
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/css/b2b_join_form.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/js/b2b.js"></script>


<footer id="footer">
        <div id="footer_sns">
            <div class="container">
                <div class="footer_sns">
                    <ul>
                        <li class="icon s1"><a href="#"><span class="ir_pm">트위터</span></a></li>
                        <li class="icon s2"><a href="#"><span class="ir_pm">페이스북</span></a></li>
                        <li class="icon s3"><a href="#"><span class="ir_pm">인스타그램</span></a></li>
                        <li class="icon s4"><a href="#"><span class="ir_pm">구글 플레이</span></a></li>
                        <li class="icon s5"><a href="#"><span class="ir_pm">아이폰 앱스토어</span></a></li>
                    </ul>
                    <div class="tel">
                        <a href="#">ARS <em>1544-5252</em></a>
                    </div>
                </div>
            </div>
       	</div>
        <div id="footer_infor">
            <div class="container">
                <div class="row">
                    <div class="footer_infor">
                        <!-- <h2><img src="assets/img/logo_footer.png" alt="megabox"></h2> -->
                        <h2>로고1</h2>
                        <ul>
                            <li><a href="#" id="partner-join-btn">파트너</a></li>
                            <li><a href="#" id="nursery-join-btn">어린이집</a></li>
                            <li><a href="#">제휴/광고/부대사업 문의</a></li>
                            <li><a href="#">이용약관</a></li>
                            <li><a href="#">개인정보처리방침</a></li>
                            <li><a href="#">고객센터</a></li>
                            <li><a href="#">윤리경영</a></li>
                        </ul>
                        <address>
                            <p>서울특별시 서초구 강남대로 459 <br><span class="bar2">대표자명 김진근</span>
                                <br><span class="bar2">사업자등록번호
                                    111-11-1111</span> 통신판매업신고번호 제 111호</p>
                            <p>Copyright 2020 by Bit Inc. All right reserved</p>
                        </address>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    
     <!-- 파트너 가입신청 모달-->
     <div class="modal" id="partner-modal">
         <div class="modal-content">
             <span class="close-button" id="pclose-button">&times;</span>
             <h1 class="title">파트너 가입신청</h1>
             <h5 class="sentence">아래 사항을 작성하여 보내주시면 파트너 담당자가<br />
                확인하여 연락 드리도록 하겠습니다.</h5>
             <hr>
             <form action="/" method="POST">
                
               <input type="text" name="license_num" placeholder="사업자등록번호" required="required">
               <input type="text" name="name" placeholder="회사명" required="required">
               <input type="tel" name="phone" placeholder="연락처" required="required">
               <input type="email" name="email" placeholder="이메일" required="required">       
               <input type="text" name="homepage" placeholder="홈페이지">
               <input type="text" name="postal_num" placeholder="우편번호">
               <input type="text" name="address" placeholder="주소">
               <input type="text" name="address_detail" placeholder="상세주소">
               
               <div>
               <select name="term" id="contract-term">
				    <option value="">계약기간 선택</option>
				    <option value="3">3개월</option>
				    <option value="6">6개월</option>
				    <option value="9">9개월</option>
				    <option value="12">12개월</option>
				</select>
				</div>
				<input type="text" name="introduce" placeholder="간단한 소개">
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
             <form id="mun2" action="companyAddProcess.se" method="POST" enctype="multipart/form-data">
                
                                
               <input type="text" name="license_num" placeholder="사업자등록번호" required="required">
               <input type="text" name="name" placeholder="어린이집 이름" required="required">
               <input type="tel" name="phone" placeholder="연락처" required="required">
               <input type="email" name="email" placeholder="이메일" required="required">       
               <input type="text" name="homepage" placeholder="홈페이지">
               <input type="text" name="postal_num" id="mun" placeholder="우편번호">
               <input type="text" name="address" id="address" placeholder="주소">
               <input type="text" name="address_detail" id="address_detail" placeholder="상세주소">
               
               <div>
               <select name="term" id="contract-term">
				    <option value="">계약기간 선택</option>
				    <option value="3">3개월</option>
				    <option value="6">6개월</option>
				    <option value="9">9개월</option>
				    <option value="12">12개월</option>
				</select>
				</div>

               <div class="box-file-input"><label><input type="file" name="img" class="file-input"></label><span class="filename">대표사진을 선택해주세요.</div>
               
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
 <script>
 $('#mun').click(function() {
	goPopup();
})
 function goPopup() {
    // 주소검색을 수행할 팝업 페이지를 호출합니다.
    // 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
    var pop = window.open("/bit_project/jusoPopup.jsp", "pop",
          "width=570,height=420, scrollbars=yes, resizable=yes");

    // 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
 }

 function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn){
     // 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
  	alert(zipNo);
    $('#mun').val(zipNo);
    $('#address').val(roadAddrPart1);
    $('#address_detail').val(addrDetail);
}
 </script>
 