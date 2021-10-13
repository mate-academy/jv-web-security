<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<h4 style="color:red">${errorMsg}</h4>
<form method="post" id="authenticate" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Login:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Login</th>
        <th>Password</th>
        <th>Submit</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="authenticate" required>
        </td>
        <td>
            <input type="password" name="password" form="authenticate" required>
        </td>
        <td>
            <input type="submit" name="submit" form="authenticate">
        </td>
    </tr>
</table>
<table border="1" class="table_dark">
    <tr>
        <th>Or you car register a new driver</th>
    </tr>
    <tr>
    <td>
        <a href="${pageContext.request.contextPath}/drivers/add">Register</a>
    </td>
    </tr>
</table>
</body>
</html>
