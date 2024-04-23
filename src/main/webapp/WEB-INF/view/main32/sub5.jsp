<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>직원 등록</h3>
<c:if test="${not empty message}">
    <div style="background-color: skyblue; padding: 20px">
            ${message}
    </div>
</c:if>
<form action="" method="post">
    <div>
        lastName
        <input type="text" name="lastName">
    </div>
    <div>
        firstName
        <input type="text" name="firstName">
    </div>
    <div>
        birthDate
        <input type="text" name="birthDate">
    </div>
    <div>
        photo
        <input type="text" name="photo">
    </div>
    <div>
        notes
        <textarea name="notes"></textarea>
    </div>
    <div>
        <input type="submit" value="제출">
    </div>
</form>
</body>
</html>
