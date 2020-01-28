<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

</head>

<body>

    <!-- 
	product_num NUMBER NOT NULL, /* product_num PK 상품번호*/
	product_name VARCHAR2(50), /* product_name 상품명 */
	total_amount NUMBER, /* total_amount 총수량 = 렌탈+개인쉐어*/
	rental_amount NUMBER, /* rental_amount 렌탈수량*/
	share_amount NUMBER, /* share_amount 개인쉐어수량 */
	manufactuer VARCHAR2(20), /* 제조사 */
	product_content VARCHAR2(1000), /* 상품상세 */
	gpa NUMBER, /* 상품평점 */
	category_L VARCHAR2(20), /* 대분류 */
	category_M VARCHAR2(20), /* 중분류 */
	category_S VARCHAR2(20), /* 소분류 */
	img_sum VARCHAR2(50), /* 썸네일 */
	img_main VARCHAR2(50), /* 메인 */
	img_detail VARCHAR2(500), /* 상품상세쪽 이미지 */
	regist DATE /* 상품 등록 시간? */
-->
    <form id="product_add_form" method="post" enctype="multipart/form-data" >
        <div>
            <!-- 상품번호 : -->
            <!-- 총점 : 상품리뷰 테이블에 상품명으로 조회해서 전체 평점을 rnum으로 나누어서 값을 넣음-->
            <!-- 날짜 : 폼 전송 시 java 단에서 현재 시간 bean 객체에 넣는 식으로 처리.-->
            <!-- 총수량 : 폼 전송 시 java 단에서 처리-->
            <!-- 
                <input type="hidden" name="product_num" value="시퀀스 쓸거라서 얘는 back-end에서 처리합니다." />                            
                <input type="number" name="gpa" placeholder="상품평점" />                        
                <input type="date" name="regist" placeholder="상품 등록 시간" />
                <input type="number" name="total_amount" placeholder="총수량" />
                -->
            <div>
                <input type="text" name="product_name" placeholder="상품명" />
            </div>

            <div>
                <input type="number" name="rental_amount" placeholder="렌탈수량" />
            </div>
            <div>
                <input type="number" name="share_amount" placeholder="개인쉐어수량" />
            </div>
            <div>
                <input type="text" name="manufacturer" placeholder="제조사" />
            </div>
            <div>
                <input type="text" name="product_content" placeholder="상품상세" />
            </div>

            <div>
                <select name="category_l">
                    <option selected value="실버">실버</option>
                    <option value="골드">골드</option>
                    <option value="플레티넘">플레티넘</option>
                    <option value="개인쉐어">개인쉐어</option>
                </select>
            </div>
            <div>
                <select name="category_m">
                    <option selected value="04">0~4</option>
                    <option value="57">5~7</option>
                </select>

            </div>
            <div>
                <select name="category_s">
                    <option selected value="과학박스">과학박스</option>
                    <option value="자동차">자동차</option>
                    <option value="로보트">로보트</option>
                    <option value="진근박스">진근박스</option>
                </select>

            </div>
            <div>
                <input type="file" name="img_sum" placeholder="썸네일" />
            </div>
            <div>
                <input type="file" name="img_main" placeholder="메인" />
            </div>
            <div>
                <input type="file" name="img_detail" placeholder="상품상세쪽 이미지" />
            </div>

        </div>

        <div>
            <input type="button" value="[등록]" onclick="prAdd('productAdd.pr')" >
            <a href="javascript:history.go(-1)">[뒤로]</a>
        </div>

    </form>
</body>
<script>
    function prAdd(url) {
		var frm = document.getElementById("product_add_form");
		frm.action = url;
		frm.submit();
	}
</script>
</html>