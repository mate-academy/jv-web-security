<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<head>
    <title>Login page</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/drivers/add">Register new driver</a>
<form method="post" id="login_form"
      action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Authenticate:</h1>
<h4 style="color: red">${errorMsg}</h4>
<table border="1" class="table_dark">
    <tr>
        <th>Login</th>
        <th>Password</th>
        <th>Submit</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="login_form" required>
        </td>
        <td>
            <input type="password" name="password" form="login_form" required>
        </td>
        <td>
            <input type="submit" name="submit" form="login_form">
        </td>
    </tr>
</table>
</body>
</html>
