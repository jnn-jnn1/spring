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
<h3>직원 정보 수정</h3>
<form action="">
    직원 번호
    <input type="text" name="id">
    <button>조회</button>
</form>
<hr>
<form action="/main30/sub2/update" method="post">
    <div>
        번호
        <input type="text" value="${employee.employeeID}" name="employeeID">
    </div>
    <div>
        성
        <input type="text" value="${employee.lastName}" name="lastName">
    </div>
    <div>
        이름
        <input type="text" value="${employee.firstName}" name="firstName">
    </div>
    <div>
        생년월일
        <input type="date" value="${employee.birthDate}" name="birthDate">
    </div>
    <div>
        사진
        <input type="text" value="${employee.photo}" name="photo">
    </div>
    <div>
        노트
        <textarea name="notes">
            ${employee.notes}
        </textarea>
    </div>
    <div>
        <button style="background-color: palevioletred">수정</button>
    </div>
</form>
</body>
</html>
