<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
    <h1>Register page</h1>
    <form method="post" action="${pageContext.request.contextPath}/register">
        Enter your login: <input type="text" name="login" required>
        Enter your password: <input type="password" name="password" required>
        Enter your name: <input type="text" name="name" required>
        Enter your license number: <input type="text" name="license_number" required>
        <button type="submit">Register</button>
    </form>
</body>
</html>
