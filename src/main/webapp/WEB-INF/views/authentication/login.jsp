<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <p style="color: red">${error_message}</p>
    <form action="${pageContext.request.contextPath}/login" method="post">
        <label for="login"><b>Username</b></label>
        <input type="text" id="login" placeholder="Enter login" name="login" required>

        <label for="password"><b>Password</b></label>
        <input type="password" id="password" placeholder="Enter Password" name="password" required>
        <button type="submit">Login</button>
    </form>
    <p>Don't have driver account? <a href="${pageContext.request.contextPath}/drivers/add">Create account</a></p>
</body>
</html>
