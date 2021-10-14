<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file="/WEB-INF/views/css/table_dark.css"%>
    <%@include file='/WEB-INF/views/css/button.css' %>
</style>
<html>
<head>
    <title>Header</title>
</head>
<body>
    <table class="table_dark">
        <tr>
            <th>
                <a href="${pageContext.request.contextPath}/logout" class="button">Logout</a>
            </th>
        </tr>
    </table>
</body>
</html>
