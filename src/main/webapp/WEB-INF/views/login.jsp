<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<H1>Login Page</H1>
<form method="post" action="${pageContext.request.contextPath}/login">
    Login<input type="text" name="login" required>
    Password<input type="password" name="password" required>
    <button type="submit">Login</button>
</form>
</body>
</html>
