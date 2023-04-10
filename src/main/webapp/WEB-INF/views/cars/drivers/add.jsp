<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display all drivers</title>
</head>
<body>
<style>
    <%@include file='/WEB-INF/views/css/add.css' %>
</style>
<button style="background-color: #808080; color: #fff;"
        onclick="window.location.href='${pageContext.request.contextPath}/cars'">
    Back to list of all cars
</button>
<h1>List of drivers by car with id ${id}</h1>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>DRIVER LICENSE</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td>
                <form action="/cars/drivers/remove" method="POST">
                    <input type="hidden" name="driver_id" value="${driver.id}" />
                    <input type="hidden" name="car_id" value="${id}" />
                    <button type="submit">Remove</button>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<form action="/cars/drivers/search" method="POST">
    <input type="hidden" name="car_id" value="${id}" />
    <button style="background-color: #808080; color: #fff; width: 500px;">
        Add new driver
    </button>
</form>
</body>
</html>
