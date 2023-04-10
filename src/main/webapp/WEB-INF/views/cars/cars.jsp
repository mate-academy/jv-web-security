<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
    <%@include file="/WEB-INF/views/header.jsp"%><br>
    <h1>List of cars!</h1>
    <table>
        <tr>
            <td>ID</td>
            <td>MODEL</td>
            <td>MANUFACTURER</td>
            <td>DRIVERS</td>
        </tr>

        <c:forEach items="${cars}" var="car">
            <tr>
                <td><c:out value="${car.id}" /></td>
                <td><c:out value="${car.model}" /></td>
                <td><c:out value="${car.manufacturer.name}" /></td>
                <td><c:out value="${car.getDrivers()}" /></td>
                <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                    <input type="button" value="Delete Car"></a></td>
            </tr>
        </c:forEach>
    </table>
    <form method="get" action="${pageContext.request.contextPath}/cars/create">
        <button type="submit">Create car</button>
    </form>
    <form method="get" action="${pageContext.request.contextPath}/cars/drivers/add">
        <button type="submit">Add driver to car</button>
    </form>
    <form method="get" action="${pageContext.request.contextPath}/cars/drivers/delete">
        <button type="submit">Delete driver from car</button>
    </form>
</body>
</html>
