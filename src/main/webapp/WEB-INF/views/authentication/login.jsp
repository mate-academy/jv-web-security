<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Login Page</h1>
<h4 style="color:red">${error}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Login <input type="text" name="login"><br>
    Password <input type="password" name="password"><br>
    <button type="submit">Login</button>
</form>
<a href="${pageContext.request.contextPath}/drivers/add">
    <input type="button" value="Register driver" />
</a>
</body>
</html>
