<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Login</title>
    </head>
    <body>
        <h1>Login page</h1>
        <h4 style="color:red">${errorMessage}</h4>
        <form method="post" action="${pageContext.request.contextPath}/login">
            <h2>Please fill your data:</h2>
            LOGIN: <input type="text" name="login" required>
            PASSWORD: <input type="password" name="password" required>
            <button type="submit">LOGIN</button><br><br>
        </form>
        <a href="${pageContext.request.contextPath}/drivers/add">Register a new driver</a>
    </body>
</html>
