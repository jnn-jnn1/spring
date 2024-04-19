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

    .active {
        background-color: blue;
        color: white;
    }
</style>
<h3>고객 정보 조회</h3>
<hr>
<%-- action 값이 없거나 생략되면 현재 요청 경로로 보냄 --%>
<%--<form>--%>
<%--    페이지 선택--%>
<%--    <select name="page">--%>
<%--        <c:forEach begin="1" end="${pageCount}" var="num">--%>
<%--            <option value="${num}">${num}</option>--%>
<%--        </c:forEach>--%>
<%--    </select>--%>
<%--    <button>조회</button>--%>
<%--</form>--%>
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
                        ${customer.contactName}
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
<div>

    <c:if test="${currentPage != 1}">
    <span>
             <c:url var="link" value="/main27/sub1">
                 <c:param name="page" value="1"/>
             </c:url>
            <a href="${link}">맨앞</a>
    </span>
    </c:if>
    <c:if test="${not empty prevPageNumber}">
        <c:url var="link" value="/main27/sub1">
            <c:param name="page" value="${prevPageNumber}"/>
        </c:url>
        <span>
            <a href="${link}">이전</a>
        </span>
    </c:if>
    <c:forEach begin="${beginPageNumber}" end="${endPageNumber}" var="num">
        <c:url var="link" value="/main27/sub1">
            <c:param name="page" value="${num}"/>
        </c:url>
        <span>
            <a class="${currentPage eq num ? 'active' : ''}" href="${link}">${num}</a>
        </span>
    </c:forEach>
    <c:if test="${not empty nextPageNumber}">
        <span>
             <c:url var="link" value="/main27/sub1">
                 <c:param name="page" value="${nextPageNumber}"/>
             </c:url>
            <a href="${link}">다음</a>
        </span>
    </c:if>
    <c:if test="${currentPage != pageCount}">
    <span>
             <c:url var="link" value="/main27/sub1">
                 <c:param name="page" value="${pageCount}"/>
             </c:url>
            <a href="${link}">맨뒤</a>
    </span>
    </c:if>
</div>
</body>
</html>
