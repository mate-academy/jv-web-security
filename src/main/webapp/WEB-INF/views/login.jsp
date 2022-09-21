<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<table class="table_dark">
    <tr>
        <h2 class="table_dark">Login</h2>
    </tr>
    <th style="color: red">${errorMessage}</th>
    <tr>
        <th>Please fill the form given below</th>
    </tr>
</table>
<table class="table_dark">
    <tr>
        <td>
            <form method="post" action="${pageContext.request.contextPath}/login">
                Please enter your login <input type="text" name="login" required><br>
                Please enter your password <input type="password" name="password" required><br>

                <button type="submit">Login</button>
            </form>
        </td>
    </tr>
    <tr><td>
            Don`t have account yet ?  <a href="${pageContext.request.contextPath}/drivers/create">Register</a>
    </td></tr>
</table>
</body>
</html>
