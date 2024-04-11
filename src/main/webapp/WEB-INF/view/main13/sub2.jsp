<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- url : 주소를 생성하고 저장할 수 있는 태그 --%>
<%-- 여러곳에서 반복해서 쓰는 주소 --%>
<%-- request parameter를 추가 --%>
<%-- request parameter의 url encoding--%>
<c:url value="https://search.naver.com/search.naver" var="naverUrl">
    <c:param name="query" value="뉴진스"/>
    <c:param name="where" value="nexearch"/>
    <c:param name="sm" value="tab_hty.top"/>
</c:url>
<a href="${naverUrl}">네이버</a>
<a href="https://search.naver.com/search.naver?query=bts">네이버</a>
<hr>
<c:url value="https://search.daum.net/search" var="searchaespa">
    <c:param name="w" value="tot"/>
    <c:param name="DA" value="YZR"/>
    <c:param name="t__nil_searchbox" value="btn"/>
    <c:param name="q" value="에스파"/>
</c:url>
<a href="${searchaespa}">에스파</a>
</body>
</html>
