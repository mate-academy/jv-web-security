<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<div class="container">
    <h1>Login page</h1>
    <h4 class="error-message">${errorMsg}</h4>
    <form method="post" action="${pageContext.request.contextPath}/login">
        <label for="login">Enter your login:</label>
        <input type="text" name="login" id="login" required>

        <label for="password">Enter your password:</label>
        <input type="password" name="password" id="password" required>

        <button type="submit">Login</button>
    </form>
    <div class="register-link">
        <a href="${pageContext.request.contextPath}/drivers/add">Register</a>
    </div>
</div>
</body>
</html>

