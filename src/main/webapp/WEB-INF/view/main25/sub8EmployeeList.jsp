<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h4>직원 목록 검색</h4>
<style>
    tr,
    table,
    td,
    th {
        border: 1px solid black;
        padding: 2px;
        justify-content: center;
    }

    .action {
        background-color: lightblue;
        color: white;
    }
</style>
<%--<form action="">--%>
<%--    <input value="${param.name}" type="text" name="name" placeholder="이름을 입력하세요">--%>
<%--    <button>입력</button>--%>
<%--</form>--%>
<%--<c:if test="${empty employees}" var="emptyEmployees">--%>
<%--    해당 직원이 없습니다--%>
<%--</c:if>--%>
<%--<c:if test="${not emptyEmployees}">--%>
<div>
    <c:if test="${currentPage != 1}">
        <c:url value="/main27/sub2" var="link">
            <c:param name="page" value="1"/>
        </c:url>
        <span>
            <a href="${link}">맨앞</a>
        </span>
    </c:if>
    <c:if test="${not empty prevPageNumber}">
        <c:url value="/main27/sub2" var="link">
            <c:param name="page" value="${prevPageNumber}"/>
        </c:url>
        <span>
            <a href="${link}">이전</a>
        </span>
    </c:if>
    <c:forEach begin="${beginPageNumber}" end="${endPageNumber}" var="page">
        <c:url value="/main27/sub2" var="link">
            <c:param name="page" value="${page}"/>
        </c:url>
        <span>
        <a class="${currentPage eq page ? 'action' : ''}" href="${link}">${page}</a>
        </span>
    </c:forEach>
    <c:if test="${not empty nextPageNumber}">
        <c:url value="/main27/sub2" var="link">
            <c:param name="page" value="${nextPageNumber}"/>
        </c:url>
        <span>
            <a href="${link}">다음</a>
        </span>
    </c:if>
    <c:if test="${currentPage != lastPage}">
        <c:url value="/main27/sub2" var="link">
            <c:param name="page" value="${lastPage}"/>
        </c:url>
        <span>
            <a href="${link}">맨뒤</a>
        </span>
    </c:if>
</div>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>LastName</th>
        <th>FirstName</th>
        <th>BirthDate</th>
        <th>Photo</th>
        <th>Notes</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${employees}" var="employee">
        <tr>
            <td>${employee.employeeID}</td>
            <td>${employee.lastName}</td>
            <td>${employee.firstName}</td>
            <td>${employee.birthDate}</td>
            <td>${employee.photo}</td>
            <td>${employee.notes}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
