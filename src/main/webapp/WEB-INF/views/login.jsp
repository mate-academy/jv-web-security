<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Login page</title>
    </head>
    <body>
        <form method="post" action="${pageContext.request.contextPath}/login">
            Username:<input type="text" name="username" required><br>
            Password:<input type="password" name="password" required><br>
            <h5 style="color: red">${errMessage}</h5>
            <button type="submit">Login</button>
        </form>
    <a href="${pageContext.request.contextPath}/drivers/add">Register</a>
    </body>
</html>
