<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" id="addDriver" action="${pageContext.request.contextPath}/drivers/add"></form>
<h1 class="table_dark">Register:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Name</th>
        <th>License number</th>
        <th>Username</th>
        <th>Password</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="name" form="addDriver" required>
        </td>
        <td>
            <input type="text" name="license_number" form="addDriver" required>
        </td>
        <td>
            <input type="text" name="username" form="addDriver" required>
        </td>
        <td>
            <input type="text" name="password" form="addDriver" required>
        </td>
        <td>
            <input type="submit" name="add" form="addDriver">
        </td>
    </tr>
</table>
</body>
</html>
