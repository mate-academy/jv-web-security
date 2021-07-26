<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Login</h1>
<form method="post" action="${pageContext.request.contextPath}/login">
    Login: <input type="text" name="login" required>
    Password: <input type="password" name="password" required>
    <button type="submit">Log in</button>
</form>
<h4 style="color:red">${errorMsg}</h4>
<h4><a href=${pageContext.request.contextPath}/drivers/add>No account yet? Register</a></h4>
</body>
</html>
