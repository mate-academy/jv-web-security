<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
    <body>
        <%@include file="/WEB-INF/views/header.jsp"%>
        <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
            <input type="text" name="id" value="${car.id}" hidden>
            </h3> Car "${car.model}" has drivers
            <c:forEach items="${car.drivers}" var="driver">
                <c:out value="${driver.name};"/>
            </c:forEach>
            <br><br>
            Drivers Not Of Car
            <br>
            <select name="driver_id">
                <c:forEach items="${driversNotFromCar}" var="driver">
                    <option value="${driver.id}">${driver.name}</option>
                </c:forEach>
            </select>
            <button type="submit">Add driver to car</button>
        </form>
    </body>
</html>
