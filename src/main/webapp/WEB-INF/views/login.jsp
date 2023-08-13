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
<form method="post" id="login" action="${pageContext.request.contextPath}/login">
<h1 class="table_dark">Login:</h1>
<table border="1" class="table_dark">
    <tr>
        <th colspan="3" style="color: red">${errorMsg}</th>
    </tr>
    <tr>
        <td>
            Please enter your login:<input type="text" name="login" form="login" required>
        </td>
    </tr>
    <tr>
        <td>
            Please enter your password:<input type="password" name="password" form="login" required>
        </td>
    </tr>
    <tr>
        <td>
            <input type="submit" value="Login" name="login" form="login">
        </td>
    </tr>
    <tr>
        <td>
            <button type="submit"><a href="${pageContext.request.contextPath}/drivers/add">
                Registration</a></button>
        </td>
    </tr>
</table>
</form>
</body>
</html>
