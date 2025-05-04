
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Login:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>login</th>
        <th>password</th>

        <th>submit</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="login" required>
        </td>
        <td>
            <input type="password" name="password" form="login" required>
        </td>
        <td>
            <input type="submit" name="submit" form="login">
        </td>
    </tr>
    <tr>
        <td>
            <a href="${pageContext.request.contextPath}/drivers/add">Register</a>
        </td>
    </tr>
</table>
</body>
</html>
