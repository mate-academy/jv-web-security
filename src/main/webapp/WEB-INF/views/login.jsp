<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Sing in</title>
</head>
<body>
<form method="post" id="driver" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Sign in</h1>
<h4 style="color:darkred">${errorMsg}</h4>
<table border="1" class="table_dark">
    <tr>
        <th>Login</th>
        <th>Password</th>
        <th>Submit</th>
    </tr>
        <td>
            <input type="text" name="login" form="driver" required>
        </td>
        <td>
            <input type="password" name="password" form="driver" required>
        </td>
        <td>
            <input type="submit" name="add" form="driver" required>
        </td>
    </tr>
</table>
<a href="${pageContext.request.contextPath}/drivers/add">Register</a>
</body>
</html>
