<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Taxi</title>
</head>
<body>
<%@ include file="/WEB-INF/views/navigationBar.jsp"%>
<div style="font-family: arial,serif;
float: left; display: inline-block;
background: url('https://i2.paste.pics/N2F82.png')
no-repeat; width: 1466px; height: 674px">
<form method="post" id="redirect"></form>
<h1 class="table_dark">Taxi App:</h1>
<table class="table_dark">
    <tr><td><a href="${pageContext.request.contextPath}/drivers">Drivers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/cars">My Cars</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers">Manufacturers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/add">Create new Car</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers/add">Create new Manufacturer</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver to Car</a></td></tr>
</table>
    <%@include file='/WEB-INF/views/footer.jsp' %>
</div>
</body>
</html>
