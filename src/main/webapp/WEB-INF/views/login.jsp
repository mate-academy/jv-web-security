<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<h1>login page</h1>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Please enter your login: <input type="text" name="login">;
    Please enter your password: <input type="password" name="password">;
    <button type="submit">Login</button>
</form>
<h4><a href="${pageContext.request.contextPath}/register">Register</a> </h4>
</body>
</html>
