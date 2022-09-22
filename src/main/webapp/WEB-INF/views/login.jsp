<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Login</h1>
    <h4>${message}</h4>
    <form method="post" action="${pageContext.request.contextPath}/login">
        login: <input type="text" name="login" required>
        password: <input type="password" name="password" required>
    <button type="submit">Login</button>
    </form>
    <br>
<h5><a href="${pageContext.request.contextPath}/drivers/add">Register as a driver</a> </h5>
</body>
</html>
