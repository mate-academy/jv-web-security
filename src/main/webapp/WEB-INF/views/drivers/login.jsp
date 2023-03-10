<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
</head>
<body>
<h1>Login Page</h1>
<h4 style="color:red">${errorMsg}</h4>
<form action="${pageContext.request.contextPath}/drivers/login" method="post">
    <label for="login">Login:</label>
    <input type="text" id="login" name="login"><br>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password"><br>
    <input type="submit" value="Login">
</form>
</body>
</html>
