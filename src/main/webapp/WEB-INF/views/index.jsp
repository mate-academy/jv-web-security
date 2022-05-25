<%@ page contentType="text/html;charset=UTF-8"%>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Main page</title>
</head>
<body>
<div class="divMenu">
    <a href="${pageContext.request.contextPath}/drivers">All Drivers</a>
    <a href="${pageContext.request.contextPath}/cars/drivers/id">All Cars</a>
    <a href="${pageContext.request.contextPath}/manufacturers">All Manufacturers</a>
    <a href="${pageContext.request.contextPath}/drivers/add">Add driver</a>
    <a href="${pageContext.request.contextPath}/cars/add">Add car</a>
    <a href="${pageContext.request.contextPath}/manufacturers/add">Add manufacturer</a>
    <a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a>
    <a href="${pageContext.request.contextPath}/logout">${logout}</a>
</div>
</body>
</html>
