<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h2>Enter your login and password</h2>
    <form method="post">
        <label for="login">Login: </label>
        <input type="text" id="login" name="login" required>
        <br><br>
        <label for="pass">Password: </label>
        <input type="password" id="pass" name="password" required>
        <br><br>
        <input type="submit" value="Login">
    </form>
    <a href="${pageContext.request.contextPath}/drivers/add">Register</a>
    <h5 style="color: red">${errorMsg}</h5>
</body>
</html>
