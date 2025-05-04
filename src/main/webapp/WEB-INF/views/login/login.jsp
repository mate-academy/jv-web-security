<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h3 style="color: red">${error}</h3>
    <form method="post" action="${pageContext.request.contextPath}/login">
        Username <input type="text" name="login"><br>
        Password <input type="password" name="password"><br>
        <button type="submit">Confirm</button>
    </form>
    <h1>New user?</h1>
    <form method="get" action="${pageContext.request.contextPath}/register">
        <button type="submit">Registration</button>
    </form>
</body>
</html>
