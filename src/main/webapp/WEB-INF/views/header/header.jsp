<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<body>
<form class="table_dark">
    <a href=${pageContext.request.contextPath}"/login">Login</a>
    <a href=${pageContext.request.contextPath}"/drivers/add">Register</a>
    <a href=${pageContext.request.contextPath}"/logout">Logout</a>
</form>
</body>
</html>


