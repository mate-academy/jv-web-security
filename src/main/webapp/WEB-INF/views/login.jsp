<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    <label for="login">Login:</label><br>
    <input type="text" id="login" name="login" required><br>
    <label for="password">Password:</label><br>
    <input type="password" id="password" name="password" required><br>
    <button type="submit">Login</button>
</form>
</body>
</html>
