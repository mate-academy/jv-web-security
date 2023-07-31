<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@ include file="/WEB-INF/views/css/table_dark.css" %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h4 style="color: red">${errorMessage}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    <h1 class="table_dark">Login:</h1>
    <table border="1" class="table_dark">
        <tr>
            <th>Username</th>
            <th>Password</th>
            <th>Login</th>
        </tr>
        <tr>
            <td><input type="text" name="username" required></td>
            <td><input type="password" name="password" required></td>
            <td>
                <button type="submit">Submit</button>
            </td>
        </tr>
</table>
</form>
<a href="${pageContext.request.contextPath}/drivers/add"><h2 style="text-align: center">REGISTER</h2></a>
</body>
</html>
