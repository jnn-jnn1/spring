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
<h3>직원 조회 및 수정</h3>
<form action="">
    번호
    <input type="number" name="id">
    <button>조회</button>
</form>
<c:if test="${empty employee}">
    조회된 직원이 없습니다
</c:if>
<c:if test="${not empty employee}">
    <form action="/main32/sub6/update" method="post">
        <h3>${id}번 직원</h3>
        <div style="display: none">
            id
            <input type="number" value="${employee.employeeID}" name="employeeID">
        </div>
        <div>
            lastName
            <input type="text" value="${employee.lastName}" name="lastName">
        </div>
        <div>
            firstName
            <input type="text" value="${employee.firstName}" name="firstName">
        </div>
        <div>
            birthDate
            <input type="text" value="${employee.birthDate}" name="birthDate">
        </div>
        <div>
            photo
            <input type="text" value="${employee.photo}" name="photo">
        </div>
        <div>
            notes
            <input type="text" value="${employee.notes}" name="notes">
        </div>
        <div>
            <input type="submit" value="제출">
        </div>
    </form>
</c:if>
</body>
</html>
