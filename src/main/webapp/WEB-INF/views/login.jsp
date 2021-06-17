<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Login Page</h1>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Login: <label><input type="text" name="login" required></label>
    Password: <label><input type="password" name="password" required></label>
    <button type="submit">Login</button>
</form>
<a href="${pageContext.request.contextPath}/register">Register</a>
</body>
</html>
