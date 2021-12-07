<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Login page:</h1>
<table border="1" class="table_dark">
    <tr>
        <td>Login</td>
        <td>Password</td>
        <td>Enter</td>
    </tr>
    <tr>
        <td>
            <input type="text" name="name" form="login" required>
        </td>
        <td>
            <input type="password" name="password" form="login" required>
        </td>
        <td>
            <input type="submit" name="enter" form="login" required>
        </td>
    </tr>
    <tr>
        <td>
            <h4 style="color: red">${errorMsg}</h4>
        </td>
    </tr>
</table>
</body>
</html>
