<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form method="post" id="user" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Login:</h1>
<p class="table_dark" style="color:red; font-size: medium">${errorMsg}</p>
<table border="1" class="table_dark">
    <tr>
        <td>Enter your login:</td>
        <td>Enter your password:</td>
        <td>Login</td>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="user" required>
        </td>
        <td>
            <input type="password" name="password" form="user" required>
        </td>
        <td>
            <input type="submit" name="add" form="user">
        </td>
    </tr>
</table>
</body>
</html>
