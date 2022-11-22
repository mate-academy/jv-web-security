<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/login">
<h1 class="table_dark">Login</h1>
<table border="1" class="table_dark">
    <tr>
        <th>login</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" required>
        </td>
    </tr>
</table>
<table border="1" class="table_dark">
    <tr>
        <th>password</th>
    </tr>
    <tr>
        <td>
            <input type="password" name="password" required>
        </td>
    </tr>
</table>
<button type="submit">confirm</button>
</form>
<h4 style="color:red">${errorMsg}</h4>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
</body>
</html>
