<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login page</title>
</head>
<body>
    <h1>Login page</h1>
    <form method="post" action="${pageContext.request.contextPath}/login">
        Enter your login: <input type="text" name="login" required>
        Enter your password: <input type="password" name="password" required>
        <button type="submit">Login</button>
    </form>
    <h3 style="color:#ff0000;">${errorMessage}</h3>
    <br>
    <br>
    <div><a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a></div>
</body>
</html>
