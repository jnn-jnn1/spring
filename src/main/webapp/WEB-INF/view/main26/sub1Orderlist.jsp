<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        tr, td, th, table {
            border: 1px solid black;
            border-collapse: collapse;
        }

        table {
            width: 100%;
        }
    </style>
</head>
<body>
<h3>주문일로 조문 조회</h3>
<form action="">
    <div>
        시작 :
        <input type="date" name="start" value="1996-07-01">
    </div>
    <div>
        종료 :
        <input type="date" name="end" value="1996-07-31">
    </div>
    <div>
        <button>조회</button>
    </div>
</form>
<hr>
<c:if test="${empty orderList}" var="emptyOrder">
    <div>
        조회된 내용이 없습니다
    </div>
</c:if>
<c:if test="${not emptyOrder}">
    <table>
        <thead>
        <tr>
            <th>id</th>
            <th>customer</th>
            <th>employee</th>
            <th>date</th>
            <th>shipper</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${orderList}" var="order">
            <tr>
                <td>${order.orderId}</td>
                <td>${order.customerId}</td>
                <td>${order.employeeId}</td>
                <td>${order.orderDate}</td>
                <td>${order.shipperId}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>
</body>
</html>
