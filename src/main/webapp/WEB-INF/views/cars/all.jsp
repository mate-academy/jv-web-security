<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
<%@include file="../headers/mainHeader.jsp" %>
<body>
<div class="container mt-4 text-center">
    <h1 class="display-5">Cars</h1>
    <table class="table table-striped-columns text-center">
        <tr>
            <th>ID</th>
            <th>Model</th>
            <th>Manufacturer name</th>
            <th>Manufacturer country</th>
            <th>Drivers</th>
            <th>Deletion</th>
        </tr>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td><c:out value="${car.id}"/></td>
                <td><c:out value="${car.model}"/></td>
                <td><c:out value="${car.manufacturer.name}"/></td>
                <td><c:out value="${car.manufacturer.country}"/></td>
                <td>
                    <c:forEach items="${car.drivers}" var="driver">
                        ${driver.id} ${driver.name} ${driver.licenseNumber} <br>
                    </c:forEach>
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">DELETE</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
