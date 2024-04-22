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
<h3>직원 정보 조회</h3>
<form action="">
    <div>
        id
        <input type="number" name="id">
    </div>
    <div>
        <button>조회</button>
    </div>
</form>
<hr>
<c:if test="${empty employee}">
    조회된 직원이 없습니다
</c:if>
<c:if test="${not empty employee}">

    <div>
        id
        <input type="number" name="id" readonly value="${employee.employeeID}">
    </div>
    <div>
        LastName
        <input type="text" readonly value="${employee.lastName}">
    </div>
    <div>
        FirstName
        <input type="text" readonly value="${employee.firstName}">
    </div>
    <div>
        BirthDate
        <input type="date" readonly value="${employee.birthDate}">
    </div>
    <div>
        <input type="text" readonly value="${employee.photo}">
    </div>
    <div>
        <textarea readonly>${employee.notes}</textarea>
    </div>
    <form action="/main29/sub2/delete" method="post" onsubmit="return confirm('삭제하시겠습니까?')
    ">
        <input hidden type="text" name="id" readonly value="${employee.employeeID}">
        <button style="background-color: palevioletred">삭제</button>
    </form>
</c:if>
</body>
</html>
