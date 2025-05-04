<%--@elvariable id="errorMessage" type=""--%>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h4 style="color: red">${errorMessage}</h4>
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Login</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Login</th>
        <th>Password</th>
        <th></th>
    </tr>
    <tr>
        <td>
            <label>
                <input type="text" name="login" form="login" required>
            </label>
        </td>
        <td>
            <label>
                <input type="password" name="password" form="login" required>
            </label>
        </td>
        <td>
            <input type="submit" name="login" form="login">
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <a href="${pageContext.request.contextPath}/drivers/add">Register</a>
        </td>
    </tr>
</table>
</body>
</html>