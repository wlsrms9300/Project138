<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Share</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/share.css" />">

</head>
<body>
    <div class="container">
        <div id="subject">
            <h1>Share</h1>
            <hr>
        </div>
        <div class="content">
            <div id="info">
                <div id="share">
                    <br>
                    <h2>Share</h2>
                    <p>쉐어받은 물품은 상품리스트에 올라갑니다.</p>
                    <p>렌탈시 수익 발생</p>
                    <p>배송비 무료</p>
                    <p>상품가치가 없을 경우 반송(반송비 고객부담)</p>
                </div>
            </div>

            <div id="share-form">
                <hr>
                <br>
                <h2>신청서 작성</h2>
                <br>
                <form action="" method="POST">
                    <table id="share-info">
                        <tr>
                            <td>구독자 성명</td>
                            <td colspan="2"><input class="field-text" type="text" name="name"></td>
                        </tr>
                        <tr>
                            <td>연락처</td>
                            <td colspan="2"><input class="field-text" type="text" name="phone" width="50px"></td colspan="2">
                        </tr>
                        <tr>
                            <td>계좌번호</td>
                            <td>
                                <select id="select" name="bank">
                                    <option>은행</option>
                                    <option>국민</option>
                                    <option>우리</option>
                                    <option>신한</option>
                                    <option>농협</option>
                                    <option>IBK</option>
                                    <option>씨티</option>
                                </select>
                                <input class="field-text" type="text" name="account">
                            </td>
                        </tr>
                        <tr>
                            <td>상품명</td>
                            <td colspan="2"><input class="field-text" type="text" name="goods"></td colspan="2">
                        </tr>
                        <tr>
                            <td>쉐어기간</td>
                            <td colspan="2"><input class="field-text" type="text" name="share-date"></td colspan="2">
                        </tr>
                    </table>
                    <br>
                    <table id="share-chk">
                        <tr>
                            <td>발송 후 단순 변심에 의한 레고의 반송은 불가합니다.</td>
                            <td><input type="checkbox" name="chk_info" value="chk_1">예, 확인하였습니다.</td>
                        </tr>
                        <tr>
                            <td colspan="2">담당자가 확인 후 알림메시지 발송</td>
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