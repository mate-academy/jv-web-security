<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
Login page
<h4 style="color: red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Username  <input type="text" name="login" required><br>
    Password  <input type="password" name="password" required><br>
    <button type="submit">Confirm</button>
</form>
<a href="${pageContext.request.contextPath}/drivers/add">Register</a>
</body>
</html>
