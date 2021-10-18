<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/login">
    <h1 class="table_dark">Login</h1>
    <table border="1" class="table_dark">
        <tr>
            <th>Enter Login</th>
            <th>Enter password</th>
            <th>Login</th>
        </tr>
        <tr>
            <td>
                <input type="text" name="login" required>
            </td>
            <td>
                <input type="password" name="password" required>
            </td>
            <td>
                <button type="submit">Login</button>
            </td>
        </tr>

        <tr>
            <th><h4 style="color:red">${errorMsg}</h4></th>
            <th></th>
            <th><a href="${pageContext.request.contextPath}/drivers/add">Register</a></th>
        </tr>
    </table>
</form>
</body>
</html>
