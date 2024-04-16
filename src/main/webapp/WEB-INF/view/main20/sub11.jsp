<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/main20/sub12">
    <input type="text" name="type">
    <br>
    <textarea name="content"></textarea>
    <br>
    <select name="city" id="">
        <option value="london">런던</option>
        <option value="seoul">서울</option>
        <option value="chicago">시카고</option>
    </select>
    <br>
    <input type="submit">
</form>

<hr>

<form action="/main20/sub13">
    <%--  div>div*3>input:r[name=city]--%>
    <div>
        <div>
            <input type="radio" name="city" value="seoul" id="">
            서울
        </div>
        <div>
            <input type="radio" name="city" value="london" id="">
            런던
        </div>
        <div>
            <input type="radio" name="city" value="incheon" id="">
            인천
        </div>
    </div>
    <div>
        <input type="submit">
    </div>
</form>
<hr>
<%--form>div*3>input:c[name=foods]--%>
<form action="/main20/sub14">
    <div>
        <input type="checkbox" name="foods" id="" value="pizza">
        피자
    </div>
    <div>
        <input type="checkbox" name="foods" id="" value="noodle">
        국수
    </div>
    <div>
        <input type="checkbox" name="foods" id="" value="burger">
        햄버거
    </div>
    <div>
        <input type="submit">
    </div>
</form>

<hr>

<form action="/main20/sub15">
    <select name="type" id="">
        <option value="intp">intp</option>
        <option value="estj">estj</option>
        <option value="infp">infp</option>
    </select>
    <div>
        <input type="radio" name="phone" value="iphone" id="">
        iphone
    </div>
    <div>
        <input type="radio" name="phone" value="galaxy" id="">
        galaxy
    </div>
    <div>
        <input type="checkbox" name="book" id="" value="미움받을용기">
        미움받을용기
    </div>
    <div>
        <input type="checkbox" name="book" id="" value="죽고싶지만 떡볶이는 먹고싶어">
        죽고싶지만 떡볶이는 먹고 싶어
    </div>
    <div>
        <input type="checkbox" name="book" id="" value="물은 답을 알고 있다">
        물은 답을 알고 있다
    </div>
    <div>
        <input type="submit">
    </div>
</form>
</body>
</html>
