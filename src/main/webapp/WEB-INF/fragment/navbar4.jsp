<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<style>
    . action {
        background-color: lightblue;
    }
</style>

<div style="display: flex; justify-content: space-between">
    <div>
        <a class="${param.current eq 'sub6' ? 'action' : ''}" href="/main17/sub6" style="border: 1px solid black">sub6
        </a>
        <a class="${param.current eq 'sub7' ? 'action' : ''}" href="/main17/sub7" style="border: 1px solid black">sub7
        </a>
        <a class="${param.current eq 'sub8' ? 'action' : ''}" href="/main17/sub8" style="border: 1px solid black">sub8
        </a>
    </div>
    <div>
        <div>
            <c:if test="${not empty sessionScope.userName}" var="loggedIn">
                ${sessionScope.userName} 님
                <a href="/main17/sub10">logout</a>
            </c:if>
            <c:if test="${not loggedIn}">
                guest 님
            </c:if>
        </div>
    </div>
</div>
