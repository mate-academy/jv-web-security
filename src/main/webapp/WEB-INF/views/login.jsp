<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<form method="POST" id="driver" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Login page:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Enter Your Login</th>
        <th>Enter Your Password</th>
    </tr>
    <tr>
        <h4 style="color: red">${errorMessage}</h4>
        <td>
            <input type="text" name="login" form="driver" required>
        </td>
        <td>
            <input type="password" name="password" form="driver" required>
        </td>
        <td>
            <input type="submit" name="Login" form="driver">
        </td>
    </tr>
</table>
</body>
</html>
