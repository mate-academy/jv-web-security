<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
</head>
<body>
<form method="post" id="register" action="${pageContext.request.contextPath}/register"></form>
<h4 style="color: red">${errorMsg}</h4>
<h1 class="table_dark">Registration of a new driver:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Name:</th>
        <th>Login:</th>
        <th>Password:</th>
        <th>Confirm password:</th>
        <th>License number:</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="name" form="register" required>
        </td>
        <td>
            <input type="text" name="login" form="register" required>
        </td>
        <td>
            <input type="password" name="password" form="register" required>
        </td>
        <th>
            <input type="password" name="confirmPassword" form="register" required>
        </td>
        <td>
            <input type="text" name="licenseNumber" form="register" required>
        </td>
    </tr>
</table>
<button type="submit" form="register" class="table_dark">Register</button>
</body>
</html>
