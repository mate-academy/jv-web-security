<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 class="table_dark"></h1>
<table class="table_dark">
    <tr><td><a href="${pageContext.request.contextPath}/logout">Logout</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/index">Main page</a></td></tr>
</table>
</body>
</html>
