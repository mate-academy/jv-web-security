<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
<h1>Login Page</h1>
    <form method="post", action="${pageContext.request.contextPath}/login">
        Enter your username: <input type="text" name="login" required>
        Enter your password: <input type="password" name="password" required>
        <button type="submit">Login</button>
    </form>
    <h5> <a href="${pageContext.request.contextPath}/drivers/add">Register</a></h5>
</body>
</html>
