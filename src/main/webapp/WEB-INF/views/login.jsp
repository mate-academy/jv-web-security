<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h1>Login Page</h1>
    <h4 style="color: red">${errorMsg}</h4>
    <form method="post" action="${pageContext.request.contextPath}/login">
        <label>
            Please enter your login:
        </label><br>
        <label>
            <input type="text" name="login" required>
        </label><br>
        <label>
            Please enter your password:
        </label><br>
        <label>
            <input type="password" name="password" required>
        </label><br>
        <button type="submit">Login</button>
    </form>
    <form>
        <button>
        <a href="${pageContext.request.contextPath}/drivers/add">Register</a>
        </button>
    </form>
</body>
</html>
