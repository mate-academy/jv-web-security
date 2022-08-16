<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Log in</title>
</head>
<h4 style="color: red">${errorMsg}</h4>
    <body>
    <form method="post" id = "login" action="${pageContext.request.contextPath}/login"></form>
    <h1 class="table_dark">Login page</h1>
    <table border="1" class="table_dark">
        <tr>
            <th>Login</th>
            <th>Password</th>
            <th>Confirm</th>
        </tr>
        <tr>
            <td>
                <input type="text" name="login" form="login" required>
            </td>
            <td>
                <input type="password" name="password" form="login" required>
            </td>
            <td>
                <input type="submit" name="Confirm" form="login">
            </td>
        </tr>
    </table>
    </body>
</html>
