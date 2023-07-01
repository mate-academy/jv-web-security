<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Please login:</h1>
<h4 style="color: red">${error_message}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Username: <input type="text" name="login" required>
    Password: <input type="password" name="password" required>
    <button type="submit">Login</button>
</form>

<h4><a href="${pageContext.request.contextPath}/drivers/add">Create account</a></h4>
</body>
</html>
