<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Login:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Please enter your login:</th>
        <th>Please enter your password:</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="login" required>
        </td>
        <td>
            <input type="password" name="password" form="login" required>
        </td>
        <td>
            <input type="submit" name="submit" form="login">
        </td>
    </tr>
</table>
<a href="${pageContext.request.contextPath}/register">Sign in</a>
</body>
</html>
