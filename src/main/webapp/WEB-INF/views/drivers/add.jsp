<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<%@include file="../header.jsp" %>
<div class="container " style="display: inline-block">
    <a href="${pageContext.request.contextPath}/login" style="color: greenyellow;">Login</a>
</div>
<form method="post" id="driver" action="${pageContext.request.contextPath}/drivers/add"></form>
<h1 class="table_dark">Add driver:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Name</th>
        <th>License number</th>
        <th>Login</th>
        <th>Password</th>
        <th>Repeat Password</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <label>
                <input type="text" name="name" form="driver" required>
            </label>
        </td>
        <td>
            <label>
                <input type="text" name="license_number" form="driver" required>
            </label>
        </td>
        <td>
            <label>
                <input type="text" name="login" form="driver" required>
            </label>
        </td>
        <td>
            <label>
                <input type="password" name="password" form="driver" required>
            </label>
        </td>
        <td>
            <label>
                <input type="password" name="repeat_password" form="driver" required>
            </label>
        </td>
        <td>
            <input type="submit" name="add" form="driver">
        </td>
    </tr>
</table>
<h4 style="color: red;text-align: center">${errMsg}</h4>
<h4 style="color: green;text-align: center">${sucMsg}</h4>
</body>
</html>
