<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Sign in:</h1>
<h4 style="color:red">${errorMsg}</h4>
<form method="post" action ="${pageContext.request.contextPath}/login">
    Login: <input type="text" name="login" required>
    Password: <input type="password" name="password" required>
    <button type="submit">Login</button>
</form>
<a href=${pageContext.request.contextPath}/drivers/add>Sign up</a>
</body>
</html>
