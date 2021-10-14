<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        <%@include file='/WEB-INF/views/css/common.css'%>
        <%@include file='/WEB-INF/views/css/table-styles.css'%>
    </style>
    <%@include file='/WEB-INF/views/head.html'%>
    <title>Cars</title>
</head>
<body>
<H1>${head}</H1>
    <c:forEach items="${cars}" var="car">
    <table>
        <tr>
            <th colspan="4"><b>Car</b></th>
            <td rowspan="3">
                <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                    delete this Car
                </a>
            </td>
        </tr>
        <tr>
            <td>id</td>
            <td>Model</td>
            <td>Manufacturer</td>
            <td>Country</td>
        </tr>
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td><c:out value="${car.manufacturer.country}"/></td>
        </tr>
        <c:forEach items="${car.drivers}" var="driver">
            <tr>
                <th colspan="5"><b>Driver</b></th>
            </tr>
            <tr>
                <td>id</td>
                <td colspan="2">Name</td>
                <td colspan="2">LicenseNumber</td>
            </tr>
            <tr>
                <td><c:out value="${driver.id}"/></td>
                <td colspan="2"><c:out value="${driver.name}"/></td>
                <td colspan="2"><c:out value="${driver.licenseNumber}"/></td>
            </tr>
        </c:forEach>
        </table>
        <br>
    </c:forEach>
    <h3><a href="${pageContext.request.contextPath}/cars/add">
        Add new car without drivers</a></h3>
    <h3><a href="${pageContext.request.contextPath}/cars/add/driver">
        Add new driver to car</a></h3>
    <h3><a href="${pageContext.request.contextPath}/">Main page</a></h3>
</body>
</html>
