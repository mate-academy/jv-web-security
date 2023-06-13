<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
    </style>
</head>
<body>
<div style="margin: auto; width: 20%;">
    <h1>Login Page</h1>
    <form method="post" action="${pageContext.request.contextPath}/login">
        Please, enter your login: <input type="text" name="login" required> <br>
        Please, enter your password: <input type="password" name="password" required> <br>
        <button type="submit">Login</button>
        <a href="${pageContext.request.contextPath}/register" style="margin-left: 60px;">Register</a>
    </form>
    <h4 style="color:red">${errorMsg}</h4>
</div>
</body>
</html>
