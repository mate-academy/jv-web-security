<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Header</title>
</head>
<body>
<table border="1" class="table_dark">
    <tr>
        <td class="header">
        <a href="${pageContext.request.contextPath}/logout">Logout</a>
        </td>
    </tr>
</table>
</body>
</html>
