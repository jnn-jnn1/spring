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
</style>
<form action="">
    <input value="${param.name}" type="text" name="name" placeholder="이름을 입력하세요">
    <button>입력</button>
</form>
<c:if test="${empty employees}" var="emptyEmployees">
    해당 직원이 없습니다
</c:if>
<c:if test="${not emptyEmployees}">
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
</c:if>
</body>
</html>
