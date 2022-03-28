<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
    <%@include file='/WEB-INF/views/css/page_style.css' %>
</style>
<html>
<head>
    <title>All cars</title>
</head>
<body class="page_style">
<header>
    <nav>
        <h1>Меню</h1>
        <ul>
            <li><a href="${pageContext.request.contextPath}/drivers">Display All Drivers</a></li>
            <li><a href="${pageContext.request.contextPath}/cars">Display All Cars</a></li>
            <li><a href="${pageContext.request.contextPath}/manufacturers">Display All Manufacturers</a></li>
            <li><a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a></li>
            <li><a href="${pageContext.request.contextPath}/cars/add">Create new Car</a></li>
            <li><a href="${pageContext.request.contextPath}/manufacturers/add">Create new Manufacturer</a></li>
            <li><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver to Car</a></li>
            <li><a href="${pageContext.request.contextPath}/drivers/get_current_cars">Get my current cars</a></li>
            <li><p><a href="${pageContext.request.contextPath}/logout">Logout</a></p></li>
        </ul>
    </nav>
</header>
<main>
    <section>
        <h1 class="table_dark">All cars:</h1>
        <table border="1" class="table_dark">
            <tr>
                <th>ID</th>
                <th>Model</th>
                <th>Manufacturer name</th>
                <th>Manufacturer country</th>
                <th>Drivers</th>
                <th>Delete</th>
            </tr>
            <c:forEach var="car" items="${cars}">
                <tr>
                    <td>
                        <c:out value="${car.id}"/>
                    </td>
                    <td>
                        <c:out value="${car.model}"/>
                    </td>
                    <td>
                        <c:out value="${car.manufacturer.name}"/>
                    </td>
                    <td>
                        <c:out value="${car.manufacturer.country}"/>
                    </td>
                    <td>
                        <c:forEach var="driver" items="${car.drivers}">
                            ${driver.id} ${driver.name} ${driver.licenseNumber} <br>
                        </c:forEach>
                    </td>
                    <td>
                        <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">DELETE</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </section>
</main>
</body>
</html>
