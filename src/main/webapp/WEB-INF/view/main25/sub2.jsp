<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>상품명으로 상품 조회</h3>
<form action="/main25/sub2" method="get">
    상품명:
    <input type="text" name="name" placeholder="조회할 상품명을 입력하세요">
    <input type="submit" value="조회">
</form>
<hr>
<div>
    <c:forEach items="${products}" var="customer">
        <h4>${customer.id}번 상품</h4>
        <p>
            상품명:
            <input type="text" value="${customer.name}" readonly>
        </p>
        <p>
            단위:
            <input type="text" value="${customer.unit}" readonly>
        </p>
        <p>
            가격:
            <input type="text" value="${customer.price}" readonly>
            달러
        </p>
    </c:forEach>
</div>
</body>
</html>
