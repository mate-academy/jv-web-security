<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Please enter your login and password</h1>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    <label>Login</label> <input type="text" name="login" required> <br>
    <label>Password</label> <input type="password" name="password" required> <br>
    <button type="submit">Log in</button>
</form>
<a href="${pageContext.request.contextPath}/drivers/add"><button type="submit">
    Or register new Driver</button></a>
</body>
</html>
