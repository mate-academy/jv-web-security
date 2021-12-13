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
<%@include file="../header.jsp"%>
<form method="post" action="${pageContext.request.contextPath}/login">
<h1 class="table_dark">Please enter your login and password</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Login</th>
        <th>Password</th>
        <th>Enter</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" required>
        </td>
        <td>
            <input type="password" name="password" required>
        </td>
        <td>
            <button type="submit">Enter</button>
        </td>
    </tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/add"><button type="submit">
        click here to register a new Driver</button></a></td></tr>
</table>
</form>
</body>
</html>
