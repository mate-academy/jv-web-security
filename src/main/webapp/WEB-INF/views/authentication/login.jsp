<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h4 name="error-message" style="color: red; font-weight: bold;">${errorMessage}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Login <input type="text" name="login" required> <br>
    Password <input type="password" name="password" required> <br>
    <button type="submit">Log in</button>
</form>
<p>
    Not registered yet?
    <a href="${pageContext.request.contextPath}/drivers/add">
        <button>Register</button>
    </a>
</p>
</body>
</html>
