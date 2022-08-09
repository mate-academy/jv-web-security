<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>login</title>
</head>
<body>
<h4 style="color: red">${errorMsg}</h4>
<h1 class="table_dark">Login page</h1>
</form>
    <form method="post" action="${pageContext.request.contextPath}/login">
    <table class="table_dark">
        <tr><th>Login</th>
            <th>password</th>
            <th>Enter</th>
        </tr>
        <tr>
            <td><input type="text" name="login" required></td>
            <td><input type="password" name="password" required></td>
            <td><button type="submit">Login</button></td>
        </tr>
    </table>
</form>
</body>
</html>
