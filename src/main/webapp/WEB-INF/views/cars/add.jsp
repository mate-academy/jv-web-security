<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../header.jsp"%>
<style>
    <%@include file='/WEB-INF/views/css/inputs.css' %>
</style>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<form method="post" id="car" action="${pageContext.request.contextPath}/cars/add"></form>
<h1 class="inputs">Add car</h1>
<label class="inputs">
    <input class="inputs" type="text" name="model" form="car" required placeholder="Input model">
    <br>
    <input class="inputs" type="text" name="manufacturer_id" form="car" required placeholder="Input manufacturer ID">
    <br>
    <h2 class="inputs">${errorMsg}</h2>
    <button class="button" type="submit" name="add" form="car">Add</button>
</label>
</body>
</html>