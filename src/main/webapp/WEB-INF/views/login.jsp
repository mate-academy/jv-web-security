<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h4 style="color: red">${errorMsg}</h4>
<h2>Login:</h2>
<form method="post" action="${pageContext.request.contextPath}/login">
    Login: <input type="text" name="login"><br>
    Password: <input type="password" name="password"><br>
    <button type="submit">Log in</button>
    <button type="reset">Reset</button>
</form>
</body>
</html>
