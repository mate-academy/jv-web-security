<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Log out</title>
</head>
<body>
<table class="table_dark">
    <tr><td><a href="${pageContext.request.contextPath}/logout">Logout</a>
        | <a href="${pageContext.request.contextPath}/index">Main</a>
        | <a href="${pageContext.request.contextPath}/drivers/cars">My Cars</a></td></tr>
</table>
</body>
</html>
