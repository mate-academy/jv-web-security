<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Authentication</title>
</head>
<body>
<form method="post" id="driver" action="${pageContext.request.contextPath}/login">
    <table border="1" class="table_dark">
        <h1 class="table_dark">Authentication</h1>
        <tr>
            <th>Login</th>
            <th>Password</th>
            <th>Submit</th>
        </tr>
        <tr>
            <td>
                <input type="text" name="login" form="driver" required>
            </td>
            <td>
                <input type="password" name="password" form="driver" required>
            </td>
            <td>
                <button type="submit">Submit</button>
            </td>
        </tr>
        <tr>
            <td><a href="${pageContext.request.contextPath}/drivers/add">Register</a></td>
        </tr>
    </table>
</form>
</body>
</html>
