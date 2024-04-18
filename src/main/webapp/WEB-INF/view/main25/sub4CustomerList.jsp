<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<style>
    table,
    tr,
    td,
    th {
        border: 1px solid black;
        border-collapse: collapse;
    }

    table {
        width: 100%;
    }
</style>
<h3>고객 정보 조회</h3>
<hr>
<%-- action 값이 없거나 생략되면 현재 요청 경로로 보냄 --%>
<form>
    페이지 선택
    <select name="page">
        <c:forEach begin="1" end="${pageCount}" var="num">
            <option value="${num}">${num}</option>
        </c:forEach>
    </select>
    <button>조회</button>
</form>
<hr>
<c:if test="${empty customers}" var="emptyCustomer">
    고객정보가 없습니다
</c:if>
<c:if test="${not emptyCustomer}">
    <table>
        <thead>
        <tr>
            <th>고객 번호</th>
            <th>고객명</th>
            <th>연락명</th>
            <th>주소</th>
            <th>도시</th>
            <th>우편 번호</th>
            <th>국가</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${customers}" var="customer">
            <tr>
                <td>${customer.customerID}</td>
                <td>${customer.customerName}</td>
                <td>
                        ${customer.contactName}"
                </td>
                <td>
                        ${customer.address}
                </td>
                <td>
                        ${customer.city}
                </td>
                <td>
                        ${customer.postalCode}
                </td>
                <td>
                        ${customer.country}
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>
</body>
</html>
