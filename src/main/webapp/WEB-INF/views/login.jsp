<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
    <h4 style="color: red">${errorMsg}</h4>
    <form method="post" id="driver" action="${pageContext.request.contextPath}/login">
        <tr>
            <th>Please enter login</th>
            <th>Please enter password</th>
            <th>login</th>
        </tr>
        <tr>
            <td><input type="text" name="login" form="driver" required></td>
            <td><input type="password" name="password" form="driver" required></td>
            <td><input type="submit" name="LOGIN" form="driver" required></td>
        </tr>
    </form>
<a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a>
</body>
</html>
