<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>중복 없는 Country</h3>
<table>
    <thead>
    <tr>
        <th>#</th>
        <th>Country</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${country}" var="c" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td>${c}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
