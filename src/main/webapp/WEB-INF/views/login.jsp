<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h4 style="color: red; text-align: center">${errorMsg}</h4>
<form method="post" id="login" action="${pageContent.request.contextPath}/login">
<h1 class="table_dark">Login Page</h1>
    <table border="1" class="table_dark">
        <tr>
            <th>Login</th>
            <th>Password</th>
            <th></th>
        </tr>
        <tr>
            <td><input type="text" name="login" required></td>
            <td><input type="password" name="password" required></td>
            <td><input type="submit" form="login"></td>
        </tr>
        <tr>
            <td colspan="3"><a href="${pageContent.request.contextPath}/drivers/add">Register new driver</a></td>
        </tr>
    </table>
</form>

</body>
</html>
