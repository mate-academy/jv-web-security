<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<div>
    <h1>Login page</h1>
    <h5 style="color: red">${errorMessage}</h5>
    <form method="post" action="${pageContext.request.contextPath}/login">
        Please enter your login: <input type="text" name="login" required>
        Please enter your password: <input type="password" name="password" required>
        <button type="submit">Login</button>
    </form>
</div>
</body>
</html>
