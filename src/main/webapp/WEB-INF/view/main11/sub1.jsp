<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>Expresion Language</p>
<p>간단한 연산 사용 가능</p>
<p>산술연산, 논리연산, 비교연산, 삼항연산</p>

<h3>산술연산 : + , - . * , /, %</h3>
<p>${5 + 3}</p>
<p>${7 - 3}</p>
<p>${8 * 3}</p>
<p>${6 / 2}</p>
<p>${7 / 2}</p>
<%--3.5--%>
<%--키워드 연산자--%>
<p>${7 div 2}</p>
<p>${7 % 2}</p>
<p>${15 mod 4}</p>
<%--문자열 사용 가능--%>
<p>${"3" + "4"}</p>
<p>${num1} + ${num2} = ${num1 + num2}</p>

<h3>비교연산 > , < , >=, <=, ==</h3>
<p>${5 > 3}</p>
<p>${5 gt 3}</p>

<p>${5 < 3}</p>
<p>${5 lt 3}</p>

<p>${5 >= 3}</p>
<p>${5 ge 3}</p>

<p>${5 <= 3}</p>
<p>${5 le 3}</p>

<p>${5 == 3}</p>
<p>${5 eq 3}</p>

<p>${"hello" < "spring"}</p>
<%--true : 아스키 코드 사용해서 비교--%>
<p>${"hello" < "Spring"}</p>
<%--false--%>
<p>${"11" < "2"}</p>
<%--true--%>
<p>${"11" < 2}</p>
<%--숫자와 문자열을 비교하면 둘 다 숫자가 되어서 비교--%>
<%--<p>${11 < "two"} 오류 </p>--%>

<h3>논리연산 &&, ||, !</h3>
<h4>&& and</h4>
<p>${true && true}</p>
<p>${true && false}</p>
<p>${false && true}</p>
<p>${false && false}</p>

<h4>|| or</h4>
<p>${ture || true}</p>
<p>${ture || false}</p>
<p>${false || true}</p>
<p>${false || false}</p>

<h4>&& and</h4>
<p>${true and true}</p>
<p>${true and false}</p>
<p>${false and true}</p>
<p>${false and false}</p>

<h4>|| or</h4>
<p>${ture or true}</p>
<p>${ture or false}</p>
<p>${false or true}</p>
<p>${false or false}</p>

<h4>!</h4>
<p>${not true}</p>
<p>${not false}</p>

<h3>삼항연산자</h3>
<p>${true ? "hello" : "world"}</p>
<p>${false ? "hello" : "world"}</p>

<p>${age1 ge 20 ? "투표가능" : "투표불가능"}</p>
<p>${age2 ge 20 ? "투표가능" : "투표불가능"}</p>

<hr>
<p>가격이 ${price}인 물건 ${quantity}개의 총 가격은 ${quantity * price}이다.</p>
</body>
</html>
