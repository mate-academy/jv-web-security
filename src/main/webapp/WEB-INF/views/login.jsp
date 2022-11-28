<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h4 style="color:red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Login <input type="text" name="login" required><br>
    Password <input type="password" name="password" required><br>
    <button type="submit">Login</button>
</form>
<a href="${pageContext.request.contextPath}/drivers/add">Register new driver</a>
</body>
</html>
