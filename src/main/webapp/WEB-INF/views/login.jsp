<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<h1>Login</h1>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Enter your login: <input type="text" name="login">
    Enter your password: <input type="password" name="password">
    <button type="submit">Login</button>
</form>
</body>
</html>