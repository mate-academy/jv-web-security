<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/info_text.css' %>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Log into taxi service app:</h1>
<table border="1" class="table_dark">
    <tr>
        <td>
            Login: <input type="text" name="login" form="login" required>
        </td>
    </tr>
    <tr>
        <td>
            Password: <input type="password" name="password" form="login" required>
        </td>
    </tr>
    <tr>
        <td>
            <button type="submit" form="login">Login</button>
        </td>
    </tr>
</table>
<p class="error_message">${errorMsg}</p>
<p>Don't have account yet? That a shame. Please
    <a href="${pageContext.request.contextPath}/drivers/add">REGISTER</a>
    absolutely free.</p>
</body>
</html>
