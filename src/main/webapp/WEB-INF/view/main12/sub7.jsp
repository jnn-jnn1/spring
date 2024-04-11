<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>PlayerList</title>
    <style>
        .table {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid black;
        }

        .table th,
        .table td {
            border: 1px solid black;
            padding-top: 5px;
            padding-bottom: 5px;
            text-align: center;
        }
    </style>
</head>
<body>
<table class="table">
    <thead>
    <tr>
        <th>No.</th>
        <th>이름</th>
        <th>팀</th>
        <th>국적</th>
        <th>종목</th>
        <th>포지션</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${playerList}" var="player" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td>${player.name}</td>
            <td>${player.team}</td>
            <td>${player.country}</td>
            <td>${player.event}</td>
            <td>${player.positions}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
