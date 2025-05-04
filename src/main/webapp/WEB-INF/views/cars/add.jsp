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
<%@include file="../header.jsp"%>
<form method="post" id="car" action="${pageContext.request.contextPath}/cars/add"></form>
<h1 class="table_dark">Add car:</h1>
<table class="table_dark">
    <tr>
        <th>Model</th>
        <th>Manufacturer ID</th>
        <th></th>
    </tr>
    <tr>
        <td>
            <input type="text" name="model" form="car" required>
        </td>
        <td>
            <select name="manufacturer_id" form="car">
                <c:forEach items="${manufacturers}" var="manufacturer">
                    <option value="${manufacturer.id}">${manufacturer}</option>
                </c:forEach>
            </select>
        </td>
        <td>
            <input type="submit" name="add" value="add" form="car">
        </td>
    </tr>
</table>
</body>
</html>
