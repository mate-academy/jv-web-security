<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Login Page</h1>
<h3 style="color:red">${errorMsg}</h3>
<form method="post" action="${pageContext.request.contextPath}/login">
    Enter your login: <input type="text" name="login" required> <br>
    Enter your password: <input type="password" name="password" required>
    <button type="submit">Login</button>
</form>
<h3><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h3>
</body>
</html>
