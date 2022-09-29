<%@ page contentType="text/html;charset=UTF-8"%>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    <br><br>
    <h1 class="table_dark">Login page</h1>
    <table border="1" class="table_dark">
        <tr>
            <th>Please enter your login:</th>
            <th>Please enter your password:</th>
            <th>Login</th>
        </tr>
        <tr>
            <td>
                <input name="login" type="text" required>
            </td>
            <td>
                <input name="password" type="password" required>
            </td>
            <td>
                <button type="submit" name="submitButton">Login</button>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
                <h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
            </td>
        </tr>
    </table>
</form>
<br>
<br>
</body>
</html>
