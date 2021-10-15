<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
<%@include file='/WEB-INF/views/header.jsp' %><br>
<form method="post" id="manufacturer" action="${pageContext.request.contextPath}/manufacturers/add"></form>
<h1 class="table_dark">Add manufacturer:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Name</th>
        <th>Country</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="name" form="manufacturer" required>
        </td>
        <td>
            <input type="text" name="country" form="manufacturer" required>
        </td>
        <td>
            <button type="submit" name="add" form="manufacturer">Confirm</button>
        </td>
    </tr>
</table>
<br><br><br><br>
<table class="table_dark">
    <tr>
        <th>Redirect to</th>
    </tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/add">Create new Car</a></td></tr>
    <tr><td><%@include file='/WEB-INF/views/footer.jsp' %></td></tr>
</table>
</body>
</html>
