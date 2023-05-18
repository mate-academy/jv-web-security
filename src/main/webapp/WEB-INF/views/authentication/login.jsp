<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Form</title>
</head>
<body>
<h3> Login here </h3>
<form method="post">
    <table style="width: 20%">
        <tr>
            <td>Login</td>
            <td><input type="text" name="login"/></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="password"/></td>
        </tr>
    </table>
    <input type="submit"/>
    <h3 style="color: red">${exceptionMessage}</h3>
</form>
</body>
</html>
