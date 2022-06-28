<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<form method="post">
    <h1>Login page</h1>
    <h4 style="color: red">${errorMessage}</h4>
    <p>
        <label for="login">Please enter your login:</label>
        <input type="text" id="login" name="login" required>
    </p>
    <p>
        <label for="password">Please enter your password:</label>
        <input type="password" id="password" name="password" required>
    </p>
    <p>
        <button type="submit">Login</button>
    </p>
    <p>
        <a href="${pageContext.request.contextPath}/registration">Register</a>
    </p>
</form>
</body>
</html>
