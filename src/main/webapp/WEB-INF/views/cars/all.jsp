<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/all.css' %>
</style>
<jsp:include page="/WEB-INF/views/index.jsp" />
<html>
<head>
    <title>Display all cars</title>
</head>
<body>
<div class="container">
    <h1>Cars</h1>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>MODEL</th>
        <th>MANUFACTURER</th>
        <th>DRIVERS</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td>
                <form action="cars/drivers" method="POST">
                    <input type="hidden" name="car_id" value="${car.id}" />
                    <button style="background-color: #808080; color: #fff;" type="submit" class="btn">Show drivers</button>
                </form>
            </td>
            <td>
                <form action="cars/delete" method="POST">
                    <input type="hidden" name="id" value="${car.id}" />
                    <button type="submit" class="btn">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</div>
</body>
</html>
