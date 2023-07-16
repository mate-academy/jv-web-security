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
<%@include file="/WEB-INF/views/header.jsp"%>
<form method="post" id="driver" action="${pageContext.request.contextPath}/drivers/add"></form>
<h1 class="table_dark">Add driver:</h1>
<table border="1" class="table_dark">
    <tr>
        <th><label for="name">Name</label></th>
        <th><label for="license-number">License number</label></th>
        <th><label for="login">Login</label></th>
        <th><label for="password">Password</label></th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="name" id="name" form="driver" required>
        </td>
        <td>
            <input type="text" name="license_number" id="license-number" form="driver" required>
        </td>
        <td>
            <input type="text" name="login" id="login" form="driver" required>
        </td>
        <td>
            <input type="password" name="password" id="password" form="driver" required>
        </td>
        <td>
            <input type="submit" name="add" form="driver">
        </td>
    </tr>
</table>
</body>
</html>
