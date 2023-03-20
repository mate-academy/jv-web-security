<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login page</title>
</head>
<body>
    <h1 class="table_dark">Login page</h1>
    <form method="post" action="${pageContext.request.contextPath}/login"
          style="
            margin: 0 15% 0 15%;
            display: flex; gap: 20px;
            flex-direction: column;
            justify-content: center;
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;">
        <c:if test="${isError}">
            <h3 style="color: red; margin: 0">
                Incorrect data, please double-check it is correct
            </h3>
        </c:if>
        <h3 style="margin: 0">Username</h3>
        <input type="text" name="username" placeholder="Username..." required
            style="height: 30px">
        <h3 style="margin: 0">Password</h3>
        <input type="password" name="password" placeholder="Password..." required
            style="height: 30px">
        <button type="submit">Login</button>
    </form>
</body>
</html>
