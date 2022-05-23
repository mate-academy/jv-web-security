<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form method="post" id="login" action="${pageContext.request.contextPath}/login">
    <table>
        <tr>
            <th>Login</th>
            <th>Password</th>
        </tr>
        <tr>
            <td>
                <input type="text" name="login" form="login" required>
            </td>
            <td>
                <input type="password" name="password" form="login" required>
            </td>
        </tr>
    </table>
    <button type="submit">Login</button>
    <h4 style="color: red">${errorMsg}</h4>
</form>
</body>
</html>
