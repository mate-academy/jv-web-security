<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Login page</h1>
<h4 style="color:red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Enter your login: <input type="text" name="login" required>
    Enter your password: <input type="password" name="password" required>
    <button type="submit">Log in</button>
</form>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Register a new driver</a></h4>
</body>
