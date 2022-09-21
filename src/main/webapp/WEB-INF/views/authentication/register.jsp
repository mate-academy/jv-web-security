<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Registration page</title>
</head>
<body>
<form method="post" id="create" action="${pageContext.request.contextPath}/drivers/register"></form>
<h1 class="table_dark">Register driver</h1>
<table class="table_dark">
    <tr>
        <th><%@include file="/WEB-INF/views/main/header.jsp" %></th>
    </tr>
</table>
<table class="table_dark">
    <tr>
        <th>Name</th>
        <th>License number</th>
        <th>Login</th>
        <th>Password</th>
    </tr>
    <tr>
        <td><input type="text" name="name" form="create" required></td>
        <td><input type="text" name="license_number" form="create" required></td>
        <td><input type="text" name="login" form="create" required></td>
        <td><input type="password" name="password" form="create" required></td>
        <td><button type="submit" form="create">Create</button></td>
    </tr>
</table>
<table class="table_dark">
    <tr>
        <th>
            Have account already ?  <a href="${pageContext.request.contextPath}/login">Login</a>
        </th>
    </tr>
</table>
</body>
</html>
