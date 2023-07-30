<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h4 style="color:red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
<h1 class="table_dark">Add driver:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Login</th>
        <th>Password</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" required>
        </td>
        <td>
            <input type="password" name="password" required>
        </td>
        <td>
            <button type="submit">login</button>
        </td>
    </tr>
</table>
</form>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Registration</a></h4>
</body>
</html>
