<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login page</title>
</head>
<h2>Login page</h2>
<h4 style="color: red"> ${errorMessage} </h4>
    <form method="post" id="driver" action="${pageContext.request.contextPath}/login"></form>
<table border="1">
    <tr>
        <th>Username</th>
        <th>Password</th>
        <th>Submit</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="username" form="driver" required>
        </td>
        <td>
            <input type="password" name="password" form="driver" required>
        </td>
        <td>
            <input type="submit" name="submit" form="driver">
        </td>
    </tr>
</table>
<button type="submit">Login</button>
</body>
</html>
