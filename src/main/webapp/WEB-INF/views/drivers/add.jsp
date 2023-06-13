<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/header.jsp" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Add drivers</title>
</head>
<body>
<form method="post" id="driver" action="${pageContext.request.contextPath}/drivers/add">
<h1 class="table_dark">Add driver:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Name</th>
        <th>License number</th>
        <th>Login (E-mail)</th>
        <th>Password</th>
    </tr>
    <tr>
        <td><input type="text" name="name" form="driver" required></td>
        <td><input type="text" name="license_number" form="driver" required></td>
        <td><input type="text" name="login" form="driver" required></td>
        <td><input type="password" name="password" form="driver" required></td>
    </tr>
    <tr>
        <td colspan="4">
            <input type="submit" name="add" form="driver">
        </td>
    </tr>
</table>
</form>
</body>
</html>
