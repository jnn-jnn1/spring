<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>직원 정보 수정</h3>
<c:if test="${not empty message}">
    <div style="background-color: skyblue; padding: 20px">
            ${message}
    </div>
</c:if>
<form action="">
    수정할 직원번호를 입력하세요
    <br/>
    <input type="number" name="id" min="1">
    <button>입력</button>
</form>
<hr>
<c:if test="${empty customer}">
    조회된 결과가 없습니다
</c:if>
<c:if test="${not empty customer}">
    <form action="/main32/sub7/update" method="post">
        <div style="display: none">
            <input type="text" name="customerID" value="${customer.customerID}">
        </div>
        <div>
            고객명
            <br>
            <input type="text" name="customerName" value="${customer.customerName}">
        </div>
        <div>
            계약명
            <br>
            <input type="text" name="contactName" value="${customer.contactName}">
        </div>
        <div>
            주소
            <br>
            <input type="text" name="address" value="${customer.address}">
        </div>
        <div>
            도시
            <br>
            <input type="text" name="city" value="${customer.city}">
        </div>
        <div>
            우편번호
            <br>
            <input type="text" name="postalCode" value="${customer.postalCode}">
        </div>
        <div>
            국가
            <br>
            <input type="text" name="country" value="${customer.country}">
        </div>
        <div>
            <input type="submit" value="수정">
        </div>
    </form>
</c:if>
</body>
</html>
