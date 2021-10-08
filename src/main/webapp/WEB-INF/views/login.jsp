<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<h1>Login page</h1>
<h3 style="color: red">${error}</h3>
<form method="post" action="${pageContext.request.contextPath}/login">
    <td>Login:    <input type="text" name="login" required></td>
    <td>Password: <input type="password" name="password" required></td>
    <td><button type="submit">Login</button></td>
</form>
<h3><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h3>
</body>
</html>
