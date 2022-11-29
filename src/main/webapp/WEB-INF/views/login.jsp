<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login page</title>
</head>
<body>
    <h4 style="color: red">${errorMsg}</h4>
    <form method="post" action="${pageContext.request.contextPath}/login">
        Enter login: <input type="text" name="login" required>
        Enter password: <input type="password" name="password" required>
        <button type="submit">Login</button>
    </form>

    <h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
</body>
</html>
