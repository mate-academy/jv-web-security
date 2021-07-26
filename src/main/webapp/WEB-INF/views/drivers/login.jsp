<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login driver</title>
</head>
<body>
<h1>Login page</h1>
<h4 style ="color: red">${errorMsg}
</h4>
<form method="POST" action = "${pageContext.request.contextPath}/login">
    Login : <input type="login" name="login" required>
    Password : <input type="password" name="password" required>
    <button type="submit">Login</button>
</form>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
</body>
</html>
