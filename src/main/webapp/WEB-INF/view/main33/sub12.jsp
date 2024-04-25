<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table, tr, td, th {
            border-collapse: collapse;
            border: 1px solid black;
        }
    </style>
</head>
<body>
<c:if test="${not empty message}">
    <div style="background-color: skyblue; padding: 20px">
            ${message}
    </div>
</c:if>
<h3>직원 등록</h3>
<form action="" method="post">
    <div>
        <input type="text" name="title" value="제목">
    </div>
    <div>
        <input type="text" name="name" value="이름">
    </div>
    <div>
        <input type="number" name="age" value="100">
    </div>
    <div>
        <input type="number" name="price" value="12.34" step="0.01">
    </div>
    <div>
        <input type="date" name="published" value="1991-01-01">
    </div>
    <div>
        <input type="datetime-local" name="inserted" value="1991-01-01T12:00:00">
    </div>
    <div>
        <input type="submit" value="제출">
    </div>
</form>
<hr>
<h3>직원 조회</h3>
<table>
    <thead>
    <tr>
        <th>title</th>
        <th>name</th>
        <th>age</th>
        <th>price</th>
        <th>date</th>
        <th>dateTime</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${datas}" var="data">
        <tr>
            <td>${data.title}</td>
            <td>${data.name}</td>
            <td>${data.age}</td>
            <td>${data.price}</td>
            <td>${data.published}</td>
            <td>${data.inserted}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
