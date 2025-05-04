<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<form method="post" id="driver_id" action="${pageContext.request.contextPath}/drivers/add"></form>
<h1 class="table_dark">Add driver:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Name</th>
        <th>License number</th>
        <th>Login</th>
        <th>Password</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="name" form="driver_id" required>
        </td>
        <td>
            <input type="text" name="license_number" form="driver_id" required>
        </td>
        <td>
            <input type="text" name="login" form="driver_id" required>
        </td>
        <td>
            <input type="password" name="password" form="driver_id" required>
        </td>
        <td>
            <input type="submit" name="add" form="driver_id">
        </td>
    </tr>
    <tr>
        <td>
            <a href="${pageContext.request.contextPath}/index">Back to main page</a>
        </td>
        <td>
            <a href="${pageContext.request.contextPath}/drivers">Go to drivers page</a>
        </td>
    </tr>
</table>
</body>
</html>
