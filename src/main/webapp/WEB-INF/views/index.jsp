<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
    body {
        background: #333;
        color: #fff;
    }
</style>
<html>
<head>
    <title>My team</title>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp"%>
<p align="center">
    <img width="25%" align="middle" src="${pageContext.request.contextPath}/img/home.png"/>
</p>
<form method="post" id="redirect"></form>
<h1 class="table table_dark">Hello, mates</h1>
<table class="table table-dark table-hover table align-middle">
    <tr>
        <th>Redirect to</th>
    </tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers">Display All Drivers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars">Display All Cars</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers">Display All Manufacturers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/add">Create new Car</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers/add">Create new Manufacturer</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver to Car</a></td></tr>
</table>
</body>
</html>
