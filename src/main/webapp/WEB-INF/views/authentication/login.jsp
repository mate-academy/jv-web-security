<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_login.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_login">Welcome to taxi service</h1>
<table class="table_login">
    <tr>
        <th>
            <h4 style="color: red">${errorMsg}</h4>
            <p>Login:</p>
            <p><input type="text" name="login" form="login" required></p>
            <p>Password:</p>
            <p><input type="password" name="password" form="login" required></p>
            <button type="submit" form="login">Login</button>
            <p><a href="${pageContext.request.contextPath}/register">Register</a> </p>
        </th>
    </tr>
</table>
</body>
</html>
