<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>
Login page
</h1>
<form method="post" action="${pageContext.request.contextPath}/login">
    Login: <input type="text" name="login" required>
    Password: <input type="password" name="password" required>
    <button type="submit"> Login </button>
</form>
<h4>
    <a href="${pageContext.request.contextPath}/drivers/add">Register</a>
</h4>
</body>
</html>
