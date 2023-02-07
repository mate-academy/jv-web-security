<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Login page</h1>
<h4 style="color: darkred" >${errorMessage}</h4>
<form method="post" action= "${pageContext.request.contextPath}/login">
    Please enter you login <input type="text" placeholder="Your login" name="login" required>
    Please enter you password: <input type="password" placeholder="Your password" name="password" required>
    <button type="submit">Sign In</button>
</form>
<a href="${pageContext.request.contextPath}/drivers/add">Sign up</a>
</body>
</html>
