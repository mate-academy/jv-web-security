<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>My team</title>
</head>
<body>
<form method="post" id="redirect"></form>
<h1 class="table_dark">Hello, mates</h1>
<table class="table_dark">
    <tr>
        <th>Redirect to</th>
    </tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers">Manage Drivers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars">Manage Cars</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers">Manage Manufacturers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cabinet">Cabinet</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/logout">Logout</a></td></tr>
</table>
</body>
</html>
