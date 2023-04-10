<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>${driver.name}</title>
</head>
<body>
<%@include file="/WEB-INF/views/header/menu.jsp"%>
<table>
    <tr>
        <th>ID</th>
        <th>PERMISSION</th>
        <th>NAME</th>
        <th>LICENSE NUMBER</th>
        <th>CARS</th>
    </tr>
    <tr>
        <td>${driver.id}</td>
        <td>${driver.permission}</td>
        <td>${driver.name}</td>
        <td>${driver.licenseNumber}</td>
        <td>
            <select id="car_id" name="car_id">
                <c:forEach items="${users_cars}" var="car">
                    <option value="${car.id}">
                        <c:out value="${car.model}" />
                        <c:out value="${car.manufacturer}" />
                    </option>
                </c:forEach>
            </select>
        </td>
        <td><input type="submit"
                   value="delete this car"
                   onclick="window.location.href =
                           '${pageContext.request.contextPath}/profile/delete'
                           + '?driver_id=${driver.id}&car_id=' + document.getElementById('car_id').value"></td>
    </tr><br/>
</table>
<form method="post" action="${pageContext.request.contextPath}/profile?driver_id${driver.id}">
    <table>
        <tr>
            <h1>Add car:</h1>
                <td>
                    <select name="car_id">
                        <c:forEach items="${all_cars}" var="cars">
                            <option value="${cars.id}">
                                <c:out value="${cars.model}" />
                                <c:out value="${cars.manufacturer}" />
                            </option>
                        </c:forEach>
                    </select>
                </td>
                <td><input type="submit" value="add this car"
                           onclick="window.location.href =
                                   '${pageContext.request.contextPath}/profile?id=${driver.id}'"></td>
            <br />
        </tr>
    </table>
</form>
</body>
</html>
