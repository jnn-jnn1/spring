<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <h1>${message}</h1>
    <h1>${id}님 반갑습니다</h1>
</c:if>
</body>
</html>
