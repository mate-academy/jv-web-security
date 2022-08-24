<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/login">
    Login:<input type="text" name="login" required>
    Password: <input type="password" name="password" required>
    <button type="submit">Login</button>
</form>
<h4 style="color: red">${errorMsg}</h4>
</body>
</html>
