<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" id="register" action="${pageContext.request.contextPath}/register"></form>
<h1 class="table_dark">Register driver:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Name</th>
        <th>License number</th>
        <th>Username</th>
        <th>Password</th>
        <th>Register</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="name" form="register" required>
        </td>
        <td>
            <input type="text" name="license_number" form="register" required>
        </td>
        <td>
            <input type="text" name="username" form="register" required>
        </td>
        <td>
            <input type="text" name="password" form="register" required>
        </td>
        <td>
            <input type="submit" name="register" form="register">
        </td>
    </tr>
</table>
</body>
</html>
