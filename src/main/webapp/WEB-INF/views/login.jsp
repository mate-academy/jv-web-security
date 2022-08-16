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
<form method="post" id="user" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Login page</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Login</th>
        <th>Password</th>
        <th>Confirm</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="user" required>
        </td>
        <td>
            <input type="password" name="password" form="user" required>
        </td>
        <td>
            <input type="submit" name="Confirm" form="user">
        </td>
    </tr>
</table>
<h4><a href="${pageContext.request.contextPath}/drivers/add">registration</a> </h4>
</body>
</html>
