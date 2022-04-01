<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Login Page</h1>
<h2 style="color:red">${errorMsg}</h2>
<form method="post" action="${pageContext.request.contextPath}/login">
    Enter your Login: <input type="text" name="login" required>
    Enter your Password: <input type="password" name="password" required>
    <button type="submit">Login</button>
</form>
<h3><a href="${pageContext.request.contextPath}/drivers/add">Register</a> </h3>
</body>
</html>
