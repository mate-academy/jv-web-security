<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    <%@include file='/WEB-INF/views/css/style.css' %>
</style>
<body>
<div class="container" style="display: inline-block">
<a href="${pageContext.request.contextPath}/logout">Logout</a>
</div>
<div class="container" style="display: inline-block">
<a href="${pageContext.request.contextPath}/index">Main</a>
</div>
</body>
</html>
