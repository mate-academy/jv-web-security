<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Sing in</title>
</head>
<body>
<form method="post" id="driver" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Sign in</h1>
<table border="1" class="table_dark">
    <tr></tr>
    <tr>
        <th>Login</th>
        <th>Password</th>
        <th>Submit</th>
    </tr>
        <td>
            <input type="text" name="login" form="driver" required>
        </td>
        <td>
            <input type="password" name="password" form="driver" required>
        </td>
        <td>
            <input type="submit" name="add" form="driver" required>
        </td>
    </tr>
</table>
<h3 style="color:red; text-align: center; font-family: 'Lucida Sans Unicode', 'Lucida Grande', Sans-Serif">${errorMsg}</h3>
<h3 style="color:darkblue; text-align: center; font-family: 'Lucida Sans Unicode', 'Lucida Grande', Sans-Serif"><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h3>
</body>
</html>
