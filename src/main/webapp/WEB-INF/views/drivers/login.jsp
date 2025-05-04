<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>My team</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/login">
    <h4 style="color:red">${errorMsg}</h4>
    <h1 class="table_dark">Login Page</h1>
    <table border="1" class="table_dark">
    <tr>
        <th>Please enter your login:</th>
        <th>Please enter your password:</th>
        <th>Login</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" required>
        </td>
        <td>
            <input type="password" name="password" required>
        </td>
        <td>
            <button type="submit">Login</button>
        </td>
        <tr><td><a href="${pageContext.request.contextPath}/drivers/add">Register</a></td></tr>
    </tr>
</table>
</form>
</body>
</html>
