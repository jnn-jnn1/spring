<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<style>
    table,
    tr,
    th,
    td {
        border: 1px solid black;
        padding: 20px;
        justify-content: center;
    }
</style>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h4>상품 리스트</h4>
<hr>

<form action="">
    <select name="category" multiple>
        <c:forEach items="${categoryList}" var="category">
            <option value="${category.id}">${category.name}</option>
            <c:set value="false" var="selected"/>
            <c:forEach items="${prevCategorySelect}" var="prev">
                <c:if test="${category.id == prev}">
                    <c:set var="selected" value="true"/>
                </c:if>
            </c:forEach>
            <option ${selected ? "selected":""} value="${category.id}">${category.name}</option>
        </c:forEach>
    </select>
    <button>조회</button>
</form>
<c:if test="${empty products}" var="emptyProduct">
    <p>조회할 상품이 없습니다</p>
</c:if>
<hr>
<c:if test="${not emptyProduct}">
    <table>
        <thead>
        <tr>
            <th>ProductID</th>
            <th>ProductName</th>
            <th>SupplierID</th>
            <th>CategoryID</th>
            <th>Unit</th>
            <th>Price</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${products}" var="item">
            <tr>
                <td>${item.productID}</td>
                <td>${item.productName}</td>
                <td>${item.supplierID}</td>
                <td>${item.categoryID}</td>
                <td>${item.unit}</td>
                <td>${item.price} 달러</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>
</body>
</html>
