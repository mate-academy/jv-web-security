<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Registration</title>
</head>
<body>
<form method="post" id="driver" action="${pageContext.request.contextPath}/register"></form>
<h1 class="table_dark">Registration:</h1>
<h4 style="color: red">${errorMsg}</h4>
<table border="1" class="table_dark">
    <tr>
        <th>Name</th>
        <th>License number</th>
        <th>Login</th>
        <th>Password</th>
        <th>Repeat password</th>
        <th>Registration</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="name" form="driver" required>
        </td>
        <td>
            <input type="text" name="license_number" form="driver" required>
        </td>
        <td>
            <input type="text" name="login" form="driver" required>
        </td>
        <td>
            <input type="password" name="password" form="driver" required>
        </td>
        <td>
            <input type="password" name="repeatPassword" form="driver" required>
        </td>
        <td>
            <input type="submit" name="add" form="driver">
        </td>
    </tr>
</table>
</body>
</html>
