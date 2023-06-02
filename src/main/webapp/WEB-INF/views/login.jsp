<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Login Page</h1>
<h2 style="color: red">${errorMsg}</h2>
<form method="post" action="${pageContext.request.contextPath}/login">
    <p style="font-size: 18px;">Please enter your login: <input type="text" name="login" required></p>
    <p style="font-size: 18px;">Please enter your password: <input type="password" name="password" required></p>
    <button type="submit">Login</button>
</form>
<h4><a href="${pageContext.request.contextPath}/drivers/add">LINK</a> </h4>
</body>
</html>
