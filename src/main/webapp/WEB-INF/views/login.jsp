<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Log In</title>
</head>
<style>
    h3 {text-align: center;}
    h4 {text-align: right;}
</style>
<body>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Registration new Driver</a></h4>
<form method="post" id="driver" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Login driver</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Login</th>
        <th>Password</th>
        <th>Submit</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="driver_login" form="driver" required>
        </td>
        <td>
            <input type="password" name="driver_password" form="driver" required>
        </td>
        <td>
            <input type="submit" name="Submit" form="driver">
        </td>
    </tr>
</table>
<h3 style="color:red" >${errorMsg}</h3>
</body>
</html>
