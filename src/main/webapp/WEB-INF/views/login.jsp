<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<div>
    <h1>Login page</h1>
    <h5 style="color: red">${errorMessage}</h5>
    <form method="post" action="${pageContext.request.contextPath}/login">
        Please enter your login: <label>
        <input type="text" name="login" required>
    </label>
        Please enter your password: <label>
        <input type="password" name="password" required>
    </label>
        <button type="submit">Login</button>
    </form>
</div>
</body>
</html>
