<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login user</title>
</head>
<body>
<h1>Login page</h1>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Please enter your login: <input type="text" name="login" required>
    Please enter your password: <input type="text" name="password" required>
    <button type="submit">LOGIN</button>
</form>
</body>
</html>
