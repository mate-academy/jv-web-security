<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<%@include file="header.jsp" %>;
<form method="post" id="driver" action="${pageContext.request.contextPath}/logins/login"></form>
<h1 class="table_dark">Login</h1>
<table border="1" class="table_dark">
    <tr>

        <th>Login</th>
        <th>Password</th>
        <th>Add</th>
    </tr>
    <tr>

        <td>
            <input type="text" name="login" form="driver" required>
        </td>
        <td>
            <input type="password" name="password" form="driver" required>
        </td>
        <td>
            <input type="submit" name="add" form="driver">
        </td>
    </tr>
</table>
<tr><td><a href="${pageContext.request.contextPath}/drivers/add">Registrate driver</a></td></tr>

</body>
</html>
