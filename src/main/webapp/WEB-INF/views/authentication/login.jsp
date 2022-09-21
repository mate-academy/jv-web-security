<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">LOGIN PAGE</h1>
<table class="table_dark">
    <h2 class="table_dark" style="color:#eb08f3">
        ${errorMsg}
    </h2>
    <tr>
        <th>Please fill the form below</th>
    </tr>
</table>
<table class="table_dark">
    <tr>
        <th>Login</th>
        <th>Password</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="login" required>
        </td>
        <td>
            <input type="password" name="password" form="login" required>
        </td>
        <td>
            <input type="submit" name="add" form="login">
        </td>
    </tr>
</table>
<table class="table_dark">
    <tr>
        <th>
            <a href="${pageContext.request.contextPath}/drivers/add">I don't have an account. Register.</a>
        </th>
    </tr>
</table>
</body>
</html>
