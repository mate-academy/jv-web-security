<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign in to account</title>
</head>
<body>
<h1>Login authentication</h1>
<h4 style="color:red">${errorMessage}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Username(login) <input type="text" name="login"><br>
    Password        <input type="password" name="password">
    <button type="submit"> Log in </button>
</form>
<h3><a href="${pageContext.request.contextPath}/drivers/add">
    Don't have account? Register</a></h3>
</body>
</html>
