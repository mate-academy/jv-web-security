<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Please login</title>
</head>
<h4 style ="color:red">${wrongCredits}</h4>
<body>
<table border="1" class="table_dark">
    <tr>
        <th>Login</th>
        <th>Password</th>
    </tr>
    <tr>
        <form method="post" action="${pageContext.request.contextPath}/login">
        <td>
            <input type="text" name="login" required>
        </td>
        <td>
            <input type="password" name="password" required>
        </td>
        <td>
            <button type="submit">Login</button>
        </td>
        </form>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/add">Registration</a></td></tr>
    </tr>
</table>
</body>
</html>
