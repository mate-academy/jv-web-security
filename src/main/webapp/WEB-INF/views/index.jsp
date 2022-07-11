<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>INTERACTION</title>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp"%>
<form method="post" id="redirect"></form>
<h1 class="table_dark">Hello, mates</h1>
<table class="table_dark">
    <tr>
        <th>Redirect to</th>
    </tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/all">Display All Drivers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/all">Display All Cars</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/current">My Current Cars</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers/all">Display All Manufacturers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/add">Create new Car</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers/add">Create new Manufacturer</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver to Car</a></td></tr>
</table>
</body>
</html>
