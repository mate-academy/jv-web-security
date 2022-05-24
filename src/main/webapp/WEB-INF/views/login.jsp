<html>
<head>
    <title>Login page</title>
</head>
<body>
<h1 align="center">Login form</h1>
<h4 style="color: red; text-align: center">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    <table align="center">
        <tr>
            <td>Login</td>
            <td><input type="text" name="login"></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td><button type="submit">Login</button></td>
            <td align="center"><a href="${pageContext.request.contextPath}/drivers/add">Register</a></td>
        </tr>
    </table>
</form>
</body>
</html>
