<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<style>
    a {
        border: 1px solid black;
    }

    .active {
        background-color: aquamarine;
    }
</style>
<div>
    <a class="${param.q eq 'sub12'? 'active' : ''}" href="/main15/sub12">sub12</a>
    <a class="${param.q eq 'sub13' ? 'active' : ''}" href="/main15/sub13">sub13</a>
</div>