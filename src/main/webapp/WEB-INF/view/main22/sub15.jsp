<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <div style="padding: 20px ; background-color: blue">${message}</div>
</c:if>
<h1>Lorem ipsum dolor.</h1>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus dolor et facere, ipsa ipsum molestiae pariatur
    placeat quas, quo quod repellat similique soluta sunt, temporibus tenetur vero vitae voluptates voluptatibus?
</p>
</body>
</html>
