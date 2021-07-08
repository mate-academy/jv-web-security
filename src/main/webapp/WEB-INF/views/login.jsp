<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h4 style="color:red">${errorMsg}</h4>
<form method="post" id="driver" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">LOGIN:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Enter login</th>
        <th>Enter password</th>
        <th>Login</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="driver" required>
        </td>
        <td>
            <input type="password" name="password" form="driver" required>
        </td>
        <td>
            <input type="submit" name="login" form="driver">
        </td>
        <td>
            <a href="${pageContext.request.contextPath}/drivers/add?id=${car.id}">REGISTER</a>
        </td>
    </tr>
</table>
</body>
</html>
