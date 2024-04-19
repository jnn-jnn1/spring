<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>직원 정보 입력</h3>
<c:if test="${not empty message}">
    <div style="background-color: skyblue; padding: 20px">${message}</div>
</c:if>
<hr>
<form action="" method="post">
    <div>
        성
        <input type="text" name="lastName">
    </div>
    <div>
        이름
        <input type="text" name="firstName">
    </div>
    <div>
        생년월일
        <input type="date" value="1997-06-03" name="birthDate">
    </div>
    <div>
        사진
        <input type="text" name="photo">
    </div>
    <div>
        메모
        <input type="text" name="notes">
    </div>
    <div>
        <input type="submit" value="입력">
    </div>
</form>
</body>
</html>
