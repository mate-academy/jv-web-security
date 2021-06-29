<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<div style="text-align:center">
    <h1>Login</h1>
    <h4>${errorMessage}</h4>
    <form method="post" action="${pageContext.request.contextPath}/login">
        Login <input type="text" name="login" required><br><br>
        Password <input type="password" name="password" required><br><br>
        <button type="submit">Login</button>
    </form>
    <a href="${pageContext.request.contextPath}/drivers/add">Register</a>
</div>
</body>
</html>
