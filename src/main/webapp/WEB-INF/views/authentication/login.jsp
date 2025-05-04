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
<%@include file='/WEB-INF/views/header.jsp' %>
<h1 class="table_dark">Login</h1>
<form method="post" id="login_form" action="${pageContext.request.contextPath}/login">
<table border="1" class="table_dark">
    <tr>
        <th>Login</th>
        <th>Password</th>
        <th>Submit</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="login_form" required>
        </td>
        <td>
            <input type="password" name="password" form="login_form" required>
        </td>
        <td>
            <input type="submit" name="add" form="login_form">
        </td>
    </tr>
</table>
</form>
<p id="error_message" class="table_dark_error">${errMessage}</p>
</body>
</html>
