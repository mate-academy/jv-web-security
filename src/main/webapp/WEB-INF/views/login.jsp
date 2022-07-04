<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form method="post" id="driver" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Login Page</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Login</th>
        <th>Password</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="driver" required>
        </td>
        <td>
            <input type="password" name="password" form="driver" required>
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
            <input type="submit" form="driver">
        </td>
    </tr>
</table>
<h3 style="text-align: center; color: red">${errorMsg}</h3>
<h4 style="text-align: center"><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
</body>
</html>
