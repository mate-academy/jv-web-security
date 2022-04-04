<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <form method="post" id="driver" action="${pageContext.request.contextPath}/login"></form>
    <h1 class="table_dark">Please, enter your login and password:</h1>
    <table border="1" class="table_dark">
        <tr>
            <th>Login</th>
            <th>Password</th>
            <th>Login</th>
        </tr>
        <tr>
            <td>
                <input type="text" name="login" form="driver" required>
            </td>
            <td>
                <input type="password" name="password" form="driver" required>
            </td>
            <td>
                <input type="submit" name="login" form="driver">
            </td>
        </tr>
    </table>
    <h3 style="color: darkred">${errorMsg}</h3>
    <h4 class="btn_container"><a href = "${pageContext.request.contextPath}/drivers/add" class="btn">Register</a></h4>
</body>
</html>
