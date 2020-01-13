<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--  "./resources/img/logo4.jpg"  ${pageContext.request.contextPath}/resources/css/qna.css -->
<link rel="stylesheet" href="./resources/css/qna.css" />
 <meta name="viewport"
        content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
 <meta http-equiv="X-UA-Compatible" content="ie=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
 <script type="text/javascript">
       
        function doDisplay(){
            var con = document.getElementById("question");
            if(con.style.display=='none'){
                con.style.display = 'block';
            }else{
                con.style.display = 'none';
            }
        }
       
            function doDisplay1(){
                var con1 = document.getElementById("question1");
                if(con1.style.display=='none'){
                    con1.style.display = 'block';
                }else{
                    con1.style.display = 'none';
                }
            }
           

             function doDisplay2(){
                var con2 = document.getElementById("question2");
                if(con2.style.display=='none'){
                    con2.style.display = 'block';
                }else{
                    con2.style.display = 'none';
                }
            }
            function doDisplay3(){
                var con3 = document.getElementById("question3");
                if(con3.style.display=='none'){
                    con3.style.display = 'block';
                }else{
                    con3.style.display = 'none';
                }
            }
            function doDisplay4(){
                var con4 = document.getElementById("question4");
                if(con4.style.display=='none'){
                    con4.style.display = 'block';
                }else{
                    con4.style.display = 'none';
                }
            }
     </script>  
     
<title>qna</title>
</head>
<body>
    <div id="wrap">
        <div id="header">
            
            <h2>header</h2>
        </div>

     <div id ="commuBanner">
         
            <img src ="${pageContext.request.contextPath}/resources/img/commuBanner.jpg">
      </div>
       
      <div id="contents">
            
                <h1>자주묻는 질문</h1>

         <div class="contents1">
             <table>
        <colgroup>

            <col width="20%">
            <col width="20%">
            <col width="20%">
            <col width="20%">
            <col width="20%">
            

        </colgroup>
        <thead>
            
                <tr>
                <th scope="col"><h2>전체</h2></th>
            
            
                <th scope="col"><h2>회원</h2></th>
            
            
                <th scope="col"><h2>예약/구독</h2></th>
            
            
                <th scope="col"><h2>배송</h2></th>
            
            
                <th scope="col"><h2>환불 및 교환</h2>
                </th>
            </tr>
            
        </thead>
    </table>
    </tr>
        </div>
        <div id="list_nav_wrap">
            <div class="wrapper">

                <h3><a href="javascript:doDisplay();"style="color: black;" id="question_1">
                    회원 가입은 무료 인가요?</a></h3>
                <ul id="question" style="display: none;">
                    <li> <p></p><h3>회원가입은 무료입니다.
                        하지만 장난감을 받아보려면 구독신청을 따로 하셔야합니다.</h3></li>
                </ul>
                <h3><a href="javascript:doDisplay1();"style="color: black;" id="question_2">
                    회원 가입은 무료 인가요?</a></h3>
                <ul id="question1" style="display: none;">
                    <li> <p></p><h3>회원가입은 무료입니다.
                        하지만 장난감을 받아보려면 구독신청을 따로 하셔야합니다.</h3></li>
                </ul>
                <h3><a href="javascript:doDisplay2();"style="color: black;" id="question_3">
                    회원 가입은 무료 인가요?</a></h3>
                <ul id="question2" style="display: none;">
                    <li> <p></p><h3>회원가입은 무료입니다.
                        하지만 장난감을 받아보려면 구독신청을 따로 하셔야합니다.</h3></li>
                </ul>
                <h3><a href="javascript:doDisplay3();"style="color: black;" id="question_4">
                    회원 가입은 무료 인가요?</a></h3>
                <ul id="question3" style="display: none;">
                    <li> <p></p><h3>회원가입은 무료입니다.
                        하지만 장난감을 받아보려면 구독신청을 따로 하셔야합니다.</h3></li>
                </ul>
                <h3><a href="javascript:doDisplay4();"style="color: black;" id="question_5">
                    회원 가입은 무료 인가요?</a></h3>
                <ul id="question4" style="display: none;">
                    <li> <p></p><h3>회원가입은 무료입니다.
                        하지만 장난감을 받아보려면 구독신청을 따로 하셔야합니다.</h3></li>
                </ul>
            </div>
        </div>
      
<!--
 <div class="question">
       <div class="question1">
        <a href="javascript:doDisplay();"style="color: black;" > <p></p>회원가입은 무료인가요?</a>
        <div id="myDIV" class="feeback_comment"style="display:none;">
            <p></p><h3>회원가입은 무료입니다.
                하지만 장난감을 받아보려면 구독신청을 따로 하셔야합니다.</h3>
        </div>
       </div>
       <div class="question2">
        <a href="javascript:doDisplay();"style="color: black;"><p></p>회원가입은 무료인가요?</a>
       </div>
       <div class="question3">
        <a href="javascript:doDisplay();"style="color: black;"><p></p>회원가입은 무료인가요?</a>
       </div>
       <div class="question4">
        <a href="javascript:doDisplay();"style="color: black;"><p></p>회원가입은 무료인가요?</a>
       </div>
       <div class="question5">
         <a href="javascript:doDisplay();" style="color: black;"><p></p>회원가입은 무료인가요?</a>
       </div>
    </div>
 </div>
 -->
        <div id="footer">
        </div>
    </div>
    
</body>
</html>