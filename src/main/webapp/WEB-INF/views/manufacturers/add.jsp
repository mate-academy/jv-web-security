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
<form method="post" id="manufacturer" action="${pageContext.request.contextPath}/manufacturers/add"></form>
<h1 class="inputs">Add manufacturer</h1>
    <label class="inputs">
        <input class="inputs" type="text" name="name" form="manufacturer" required placeholder="Input name">
    <br>
        <input class="inputs" type="text" name="country" form="manufacturer" required placeholder="Input country">
    <br>
    <button class="button" type="submit" name="add" form="manufacturer">Add</button>
    </label>
</body>
</html>
