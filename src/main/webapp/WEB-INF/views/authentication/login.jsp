<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Login page:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Login</th>
        <th>Password</th>
        <th>Submit</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="login" required>
        </td>
        <td>
            <input type="password" name="password" form="login" required>
        </td>
        <td>
            <input type="submit" name="Submit" form="login">
        </td>
    </tr>
</table>
<p><form action="${pageContext.request.contextPath}/drivers/add" method="get">
    <input type="submit" value="Create driver"></form>
<tr><td><%@include file="/WEB-INF/views/buttons/main.jsp" %></td></tr>
</body>
</html>
