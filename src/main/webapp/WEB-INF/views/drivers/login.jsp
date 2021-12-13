<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Authenticate</title>
</head>
<body>
<form method="post" id="authenticate" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Authenticate</h1>
<table border="1" class="table_dark">
    <tr>
        <th>LOGIN</th>
        <th>PASSWORD</th>
        <th>AUTHENTICATE</th>
    </tr>
    <tr>
        <h4 style="color:red">${errorMsg}</h4>
        <td>
            <input type="text" name="login" form="authenticate" required>
        </td>
        <td>
            <input type="password" name="password" form="authenticate" required>
        </td>
        <td>
            <input type="submit" name="add" form="authenticate">
        </td>
        <br>
    </tr>
    <tr>
        <td>
            <a href="${pageContext.request.contextPath}/drivers/register">Registration</a>
        </td>
    </tr>
</table>
</body>
</html>
