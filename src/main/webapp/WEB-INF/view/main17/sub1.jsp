<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>name : ${requestScope.name}</div>
<div>city : ${sessionScope.city}</div>
<div>city : ${city}</div>
<hr>
<%--tesla--%>
<%-- sub2로 접근 - 제네시스 --%>
<div>${moddel}</div>
<%--tesla--%>
<div>${requestScope.model}</div>
<%--제네시스--%>
<div>${sessionScope.model}</div>
</body>
</html>
