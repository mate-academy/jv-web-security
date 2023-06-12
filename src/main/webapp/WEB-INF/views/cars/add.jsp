<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
    <style>
        <%@include file="/WEB-INF/css/inputForm.css" %>
        <%@include file="/WEB-INF/css/header.css" %>
    </style>
    <%@include file="/WEB-INF/views/header.jsp" %>
</head>
<body>
<h1>Add car</h1>
<form action="/cars/add" method="post">
    <label for="madeBy">Manufacturer:</label>
    <select name="madeBy" id="madeBy">
        <option value="">-- Select --</option>
        <c:forEach items="${manufacturers}" var="manufacturer">
            <option value="${manufacturer.id}">${manufacturer.name}</option>
        </c:forEach>
    </select>
    <br>
    <label for="model">Model:</label>
    <input type="text" name="model" id="model">
    <br>
    <input type="submit" value="Create">
</form>
</body>
</html>
