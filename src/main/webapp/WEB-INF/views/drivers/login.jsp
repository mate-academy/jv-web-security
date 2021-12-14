<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<h1 class="table_dark">Login page</h1>
<body>
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
<table border="1" class="table_dark">
    <tr>
        <td>
            <label>Login: <input type="text" name="login" required form="login"></label> <br>
        </td>
    </tr>
    <tr>
        <td>
            <label>Password: <input type="password" name="password" required form="login"></label> <br>
        </td>
    </tr>
    <tr>
        <td>
            <input type="submit" form="login">
        </td>
    </tr>
    <tr>
        <td>
            <a href="${pageContext.request.contextPath}/drivers/add"><button type="submit">
                Register</button></a>
        </td>
    </tr>
    <tr>
        <td>
            <h4 style="color: red">${errorMsg}</h4>
        </td>
    </tr>
</table>
</body>
</html>
