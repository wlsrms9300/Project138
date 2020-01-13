<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SellAndDonation</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/sellanddonation.css" />">
</head>

<body>
    <div class="container">
        <div id="subject">
            <h1>Sell & Donation</h1>
            <hr>
        </div>
        <div class="content">
            <div id="info">
                <div id="sell">
                    <br>
                    <h2>Sell</h2>
                    <p>매입할 경우에는 배송비는 고객님 부담입니다.</p>
                    <p>순차적으로 연락드리며 신청인원이 많을 경우 매입물량 제한으로 조기에 마감될 수 있습니다.</p>
                </div>
                <div id="donation">
                    <br>
                    <h2>Donation</h2>
                    <p>기부된 레고를 모아서 아동, 청소년 심리치유 전문기관에 기부합니다.</p>
                    <p style="word-break: keep-all;">사회적으로 도움이 필요한 아이들이나 가정에 전문적인 심리치료와 교육을 제공하고 놀이치료에 활용합니다.</p>
                </div>
                <br>
                <h4>기부시 배송비 무료</h4>
                <br>
            </div>

            <div id="application-form">
                <hr>
                <br>
                <h2>신청서 작성</h2>
                <br>
                <form action="" method="POST">
                    <table id="sell-and-donation-info">
                        <tr>
                            <td>어린이집 이름</td>
                            <td><input class="field-text" type="text" name="name"></td>
                        </tr>
                        <tr>
                            <td>판매 및 기부할 장난감의 수</td>
                            <td><input class="field-text" type="text" name="sellordonation_num"></td>
                        </tr>
                    </table>
                    <br>
                    <table id="sell-and-donation-chk">
                        <tr>
                            <td>발송 후 단순 변심에 의한 레고의 반송은 불가합니다.</td>
                            <td><input type="checkbox" name="chk_info" value="chk_1">예, 확인하였습니다.</td>
                        </tr>
                        <tr>
                            <td>레고를 기부합니다.</td>
                            <td><input type="checkbox" name="chk_info" value="chk_2">예, 확인하였습니다.  <b>(체크시 기부)</b></td>
                        </tr>
                    </table>
                    <br>
                    <span>
                        <button class="btn">
                            제출
                        </button>
                    </span>
                    
                </form>
            </div>
        </div>
    </div>
</body>

</html>