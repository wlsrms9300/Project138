<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" dir="ltr">

<head>
    <meta http-equiv="Pragma" content="no-cache">
    <meta charset="utf-8">
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
    <meta name="viewport"
        content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <link href="${pageContext.request.contextPath}/resources/css/common1.css" rel="stylesheet">
   	<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
    <script>
    $(document).ready(function(){
    	$("input[name='si_gift']").attr("disabled",true); //si_gift radio버튼 비활성화.
    	
        // 라디오버튼 클릭시 이벤트 발생
        $("input:radio[type=radio]").click(function(){
     
            if($("input[name=group1]:checked").val() == "1month"){
            	$('input:radio[name="si_gift"]').removeAttr('checked'); //초기화 
                $("input:radio[id=choice02]").attr("checked",true);
             
            }else if($("input[name=group1]:checked").val() == "2month"){
            	$('input:radio[name="si_gift"]').removeAttr('checked'); //초기화
                $("input:radio[id=choice02]").attr("checked",true);
          }
            else if($("input[name=group1]:checked").val() == "silver"){
            	$('input:radio[name="si_gift"]').removeAttr('checked'); //초기화
                  $("input:radio[id=choice01]").attr("checked",true);
            }else if($("input[name=group1]:checked").val() == "gold"){
            	$('input:radio[name="si_gift"]').removeAttr('checked'); //초기화
                $("input:radio[id=choice01]").attr("checked",true);
          }else if($("input[name=group1]:checked").val() == "platinum"){
          	$('input:radio[name="si_gift"]').removeAttr('checked'); //초기화
            $("input:radio[id=choice01]").attr("checked",true);
      }
        });

    });


    </script>
  </head>
  <body>
    
<div class="subContainer">
  <div class="subscribeHeader">
    <ul>
      <li class="on" style="cursor: pointer;" onclick="location.href='#'">
        <h1>1</h1>
        <span>구독선택</span>
      </li>
      <li>
        <h1>2</h1>
        <span>결제내역</span>
      </li>
      <li>
        <h1>3</h1>
        <span>결제완료</span>
      </li>
    </ul>
  </div>

    <h1 class="text-field">구독 정보를 확인해주세요.</h1>
   
  <div class="choiceBox">
    <div class="">
      <input type="radio" id="choice01" name="si_gift" value="0" >
      <label for="choice01">
        <div class="">
          <span class="title">정기결제</span>
          <span class="txt">
            <br /><br />
            <label><input TYPE="radio" name='group1' value='silver' /><em class="level">실버</em><em class="monthly">매달</em> 29,000원</label><br />
            <label><input TYPE="radio" name='group1' value='gold' /><em class="level">골드</em><em class="monthly">매달</em> 59,000원</label><br />
            <label><input TYPE="radio" name='group1' value='platinum' /><em class="level">플래티넘</em><em class="monthly">매달</em> 79,000원</label></span>
        </div>
     
      </label>
    </div>
    
    <div class="">
      <input type="radio" id="choice02" name="si_gift" value="1">
      <label for="choice02" class="choiceBox-2">
        <div class="">
          <span class="title">체험판</span>
          <br /><br />
          <span class="txt">
            <label><label id="choice02"><input TYPE='radio' name='group1' value='1month' /> 29,000원/1개월</label></label><br />
            <label><input TYPE="radio" name='group1' value='2month' /> 58,000원/2개월</label><br />
  
          </span>
        </div>
        <!--지우기-->

      </label>
    </div>
  </div>
  <div class="subscribeNext">
    <button id="termSelect" type="submit">다음단계로</button>
  </div>

  

</div>



 
</body>


</html>