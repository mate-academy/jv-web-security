<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h3 style="color: red">${errorMsg}</h3>
<form action="${pageContext.request.contextPath}/login" method="post">
    Login: <input type="text" name="login"><br>
    Password: <input type="password" name="password"><br>
    <button type="submit">Login</button>
</form>
Don't have account? <a href="${pageContext.request.contextPath}/drivers/add">Register</a>
</body>
</html>
