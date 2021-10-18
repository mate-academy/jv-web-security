<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Delete driver from car</title>
</head>
    <body>
        <%@include file="/WEB-INF/views/header.jsp"%>
        <form method="post" action="${pageContext.request.contextPath}/cars/drivers/delete">
            <input type="text" name="id" value="${car.id}" hidden>
            </h3> Car "${car.model}" has drivers
            <c:forEach items="${car.drivers}" var="driver">
                <c:out value="${driver.name};"/>
            </c:forEach>
            <br><br>
            Driver of Car
            <br>
            <select name="driver_id">
                <c:forEach items="${driversFromCar}" var="driver">
                    <option value="${driver.id}">${driver.name}</option>
                </c:forEach>
            </select>
            <button type="submit">Delete driver from car</button>
        </form>
    </body>
</html>
