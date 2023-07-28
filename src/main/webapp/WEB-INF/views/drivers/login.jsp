<%--
  Created by IntelliJ IDEA.
  User: sasch
  Date: 28.07.2023
  Time: 20:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" id="driver" action="${pageContext.request.contextPath}/drivers/login"></form>
<h1 class="table_dark">Login:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Login</th>
        <th>Password</th>
        <th></th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="driver" required>
        </td>
        <td>
            <input type="password" name="password" form="driver" required>
        </td>
        <td>
            <input type="submit" name="submit" form="driver">
            <h4 style="color:red">${message}</h4>
        </td>
    </tr>
</table>
<br>
<a href="${pageContext.request.contextPath}/drivers/add">Register new driver</a>
</body>
</html>
