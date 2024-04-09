<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- 샌프란시스코 --%>
<p>${myAttr1.jh}</p>
<p>${myAttr1["강인"]}</p>
<p>${myAttr1["흥민"]}</p>
<%-- 흥민 --%>
<p>${myAttr2}</p>
<p>${myAttr1[myAttr2]}</p>
<p>${myAttr1["민재"]}</p>
<p>${myAttr1[myAttr3]}</p>
<p>${myAttr1.jh}</p>
<p>${myAttr1["jh"]}</p>
<p>${myAttr1[jh]}</p>
</body>
</html>
