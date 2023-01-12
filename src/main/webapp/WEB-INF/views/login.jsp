<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
    <h4 style="color: red">${errorMsg}</h4>
</head>
<body>
    <form method="post" id="driver" action="${pageContext.request.contextPath}/drivers/login"></form>
    <h1 class="table_dark">Driver authentication:</h1>
    <table border="1" class="table_dark">
        <tr>
            <th>Login</th>
            <th>Password</th>
        </tr>
        <tr>
            <td>
                <input type="text" name="login" form="driver" required>
            </td>
            <td>
                <input type="password" name="password" form="driver" required>
            </td>
            <td>
                <input type="submit" name="add" form="driver">
            </td>
        </tr>
    </table>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Registration</a> </h4>
</body>
</html>
