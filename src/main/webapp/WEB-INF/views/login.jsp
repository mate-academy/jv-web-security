<%@ page contentType="text/html;charset=UTF-8" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<form method="post" id="driver" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Login:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>User Name</th>
        <th>Password</th>
        <th>Login</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login"  form="driver" required>
        </td>
        <td>
            <input type="password" name="password" form="driver" required>
        </td>
        <td>
            <button type="submit" form="driver">Login</button>
        </td>
    </tr>
        <tr>
        <td>
            <h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a> </h4>
        </td>
    </tr>
</table>
<h4 style="color: red">${errorMsg}</h4>
</body>
</html>
