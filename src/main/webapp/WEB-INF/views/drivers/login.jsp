<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<head>
    <title>Login</title>
</head>
    <h1 class="table_dark">Login page</h1>
    <form method="post" id="logins" action="${pageContext.request.contextPath}/login">
        <table border="1" class="table_dark">
            <tr>
                <th>Login</th>
                <th>Password</th>
                <th>Sing in</th>
            </tr>
            <tr>
                <td><input type="text" name="login" form="logins" required></td>
                <td><input type="password" name="password" form="logins" required></td>
                <td><button type="submit">Sing in</button></td>
            </tr>
            <tr>
                <td><a href="${pageContext.request.contextPath}/drivers/register">Register</a></td>
            </tr>
        </table>
    </form>
    <h4 style="color:red" class="table_dark">${errorMessage}</h4>
</body>
</html>
