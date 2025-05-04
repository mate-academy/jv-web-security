<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Team</title>
</head>
<style>
    <%@include file='/WEB-INF/views/css/style.css' %>
</style>
<%@include file="header.jsp" %>
<body>
<h1>My Team</h1>
<div class="container"><a href="${pageContext.request.contextPath}/drivers/cars">Display All My Cars</a></div>
<div class="container"><a href="${pageContext.request.contextPath}/drivers">Display All Drivers</a></div>
<div class="container"><a href="${pageContext.request.contextPath}/cars">Display All Cars</a></div>
<div class="container"><a href="${pageContext.request.contextPath}/manufacturers">Display All Manufacturers</a></div>
<div class="container"><a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a></div>
<div class="container"><a href="${pageContext.request.contextPath}/cars/add">Create new Car</a></div>
<div class="container"><a href="${pageContext.request.contextPath}/manufacturers/add">Create new Manufacturer</a></div>
<div class="container"><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver to Car</a></div>
</body>
</html>
