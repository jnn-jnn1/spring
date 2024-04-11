<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach begin="1" end="3" var="num">
    <p>반복 출력 할 코드${num}</p>
</c:forEach>

<%--begin은 0보다 작을 수 없음--%>
<c:forEach begin="1" end="9" var="num">
    <p>2 x ${num} = ${2 * num}</p>
</c:forEach>

<hr>
<h5>구구단 ${dan}단</h5>
<c:forEach begin="1" end="9" var="num">
    <p>${dan} x ${num} = ${dan * num}</p>
</c:forEach>

<c:forEach begin="1" end="9" var="n">
    <p>${dan} x ${10 - n} = ${dan * num}</p>
</c:forEach>
</body>
</html>
