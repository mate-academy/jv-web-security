<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <form method="post" action="${pageContext.request.contextPath}/authentication/login">
        <h1 class="table_dark">Log in</h1>
        <h4 style="color: red">${errorMsg}</h4>
        <label>Enter login</label>
        <input type="text" name="login" required><br><br>
        <label>Enter password</label>
        <input type="password" name="password" required><br><br>
        <button type="submit">Enter</button>
    </form>
    <a href="${pageContext.request.contextPath}/drivers/add">Register</a>
</body>
</html>
