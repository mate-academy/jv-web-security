<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        body {
            padding: 20px;
        }
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
