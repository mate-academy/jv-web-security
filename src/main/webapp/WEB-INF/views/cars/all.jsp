<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Cars</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
          crossorigin="anonymous">
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
            crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="/WEB-INF/views/navbar.jsp" />
<div class="container">
    <h1>Cars list:</h1>
    <table class="table table-bordered">
        <tr>
            <th class="text-center">ID</th>
            <th class="text-center">Model</th>
            <th class="text-center">Manufacturer name</th>
            <th class="text-center">Manufacturer country</th>
            <th class="text-center">Drivers</th>
            <th class="text-center">Delete</th>
        </tr>
        <c:forEach var="car" items="${cars}">
            <tr>
                <td class="text-center align-middle">
                    <c:out value="${car.id}"/>
                </td>
                <td class="text-center align-middle">
                    <c:out value="${car.model}"/>
                </td>
                <td class="text-center align-middle">
                    <c:out value="${car.manufacturer.name}"/>
                </td>
                <td class="text-center align-middle">
                    <c:out value="${car.manufacturer.country}"/>
                </td>
                <td class="text-center align-middle">
                    <c:forEach var="driver" items="${car.drivers}">
                        ${driver.name} ${driver.licenseNumber} <br>
                    </c:forEach>
                </td>
                <td class="text-center align-middle">
                    <a class="btn btn-outline-danger" href="${pageContext.request.contextPath}/cars/delete?id=${car.id}" role="button">DELETE</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
