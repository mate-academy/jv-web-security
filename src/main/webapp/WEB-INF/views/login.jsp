<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Login page</h1>
<h4 style="color:red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Your login: <input type="text" name="login" required>
    Your password: <input type="password" name="password" required>
    <button type="submit">Login</button>
    <h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
</form>
</body>
</html>