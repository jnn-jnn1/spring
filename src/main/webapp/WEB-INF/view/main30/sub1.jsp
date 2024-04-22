<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <div style="background-color: skyblue; padding: 20px">
            ${message}
    </div>
</c:if>
<h3>고객 정보 수정</h3>
<form action="">
    고객 번호
    <input type="text" name="id">
    <button>조회</button>
</form>
<hr>
<form action="main30/sub1/update" method="post">
    <div>
        고객 번호
        <input type="text" value="${customer.customerID}" name="customerID">
    </div>
    <div>
        이름
        <input type="text" value="${customer.customerName}" name="customerName">
    </div>
    <div>
        계약명
        <input type="text" value="${customer.contactName}" name="contactName">
    </div>
    <div>
        주소
        <input type="text" value="${customer.address}" name="address">
    </div>
    <div>
        도시
        <input type="text" value="${customer.city}" name="city">
    </div>
    <div>
        우편번호
        <input type="text" value="${customer.postalCode}" name="postalCode">
    </div>
    <div>
        국가
        <input type="text" value="${customer.country}" name="country">
    </div>
    <div>
        <input type="submit" value="수정">
    </div>
</form>
</body>
</html>
