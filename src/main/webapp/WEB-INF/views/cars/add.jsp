<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<div class="content">
    <form method="post" id="car" action="${pageContext.request.contextPath}/cars/add"></form>
    <h1>Add car:</h1>
    <p>Model</p>
    <input type="text" name="model" form="car" required><br>
    <p>Manufacturer ID</p>
    <input type="number" name="manufacturer_id" form="car" required><br>
    <input type="submit" name="add" form="car">
</div>
</body>
</html>
