<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <style>
        <%@include file='/WEB-INF/views/css/style.css' %>
    </style>
</head>
<body>
<jsp:include page="../index.jsp"/>
<table class="table table-striped">
    <thead>
    <tr>
        <th colspan="5" class="bg-primary text-white text-center">
            ALL CARS
            <c:if test="${driver != null}">
                [driver - <c:out value="${driver.name}"/> (<c:out value="${driver.licenseNumber}"/>)]
            </c:if>:</th>
    </tr>
    <tr>
        <th>ID</th>
        <th>MODEL</th>
        <th>MANUFACTURER</th>
        <th>DRIVERS</th>
        <th>OPERATION</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${cars}" var="car">
        <tr>
            <th>${car.id}</th>
            <td>${car.model}</td>
            <td>${car.manufacturer.name} - ${car.manufacturer.country}</td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    ${driver.name} (${driver.licenseNumber})<br>
                </c:forEach>
            </td>
            <td>
                <a class="btn btn-success"
                   href="${pageContext.request.contextPath}/cars/drivers/add?carId=${car.id}">
                    Add driver
                </a>
                <a class="btn btn-danger"
                   href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                    Delete
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<br>
<a class="btn btn-primary" href="${pageContext.request.contextPath}/cars/create">Create new car</a>
</body>
</html>
