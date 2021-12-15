<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/login" id = "login"></form>
<h1>Login</h1>
<table>
    <tr>
        <th>Login</th>
        <th>Password</th>
        <th>Submit</th>
    </tr>
    <tr>
        <td><input type="text" name="login" form="login" required></td>
        <td><input type="password" name="password" form="login" required></td>
        <td><input type="submit" name="submit" form="login"></td>
    </tr>
    <tr>
        <td><a href="/drivers/add">Registration</a></td>
    </tr>
</table>
<h3 style="color: red">${errorMsg}</h3>
</body>
</html>
