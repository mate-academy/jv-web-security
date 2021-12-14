<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>My team</title>
</head>
<body>
<%@include file="header.jsp"%>
<form method="post" id="redirect"></form>
<h1 class="table_dark">Welcome to taxi service</h1>
<table class="table_dark">
    <tr>
        <th>PLEASE MAKE YOUR DECISION</th>
    </tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers"><button type="submit">
        Display All Drivers</button></a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars"><button type="submit">
        Display All Cars</button></a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers"><button type="submit">
        Display All Manufacturers</button></a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/add"><button type="submit">
        Create new Driver</button></a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/add"><button type="submit">
        Create new Car</button></a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers/add"><button type="submit">
        Create new Manufacturer</button></a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/drivers/add"><button type="submit">
        Add Driver to Car</button></a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/current"><button type="submit">
        Display All My Cars</button></a></td></tr>
</table>
</body>
</html>
