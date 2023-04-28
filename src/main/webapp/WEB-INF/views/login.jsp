<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1 class="table_dark">Login page</h1>

<form method="post" action="${pageContext.request.contextPath}/login">
    <table class="table_dark">
        <tr>
            <td>Login <input type="text" name="login" required></td>
            <td>Password <input type="password" name="password" required></td>
            <td>
                <button type="submit">Login</button>
            </td>
        </tr>
        <tr>
            <td><h4 style="color:red">${errorMsg}</h4></td>
            <td><h4>Register if you don't have an account </h4></td>
            <td><h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4></td>
        </tr>
    </table>
</form>
</body>
</html>
