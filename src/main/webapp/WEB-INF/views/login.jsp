<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Authentication</title>
</head>
<body>
<h1 style="color:red">${errorMsg}</h1>
<form method="post" id="authentication" action="${pageContext.request.contextPath}/login"></form>
<h2 class="table_dark">Authentication:</h2>
<table border="1" class="table_dark">
    <tr>
        <th>Login</th>
        <th>Password</th>
        <th>Confirm</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="authentication" required>
        </td>
        <td>
            <input type="password" name="password" form="authentication" required>
        </td>
        <td>
            <button type="submit" form="authentication">Confirm</button>
        </td>
    </tr>
</table>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
</body>
</html>
