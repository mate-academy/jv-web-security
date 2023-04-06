<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Output Cars</title>
    <link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet">
</head>
<body>
<%@include file="${pageContext.request.contextPath}header.html" %>
<div id="wb_Heading">
    <h2 id="Heading">Enumeration of Cars</h2>
</div>
<table style="position:absolute;left:54px;top:107px;width:766px;height:149px;z-index:1;" id="Table" class="Table">
    <tr>
        <th dir="ltr" class="celltd">
            <p>
                <span>ID</span>
            </p>
        </th>
        <th dir="ltr" class="celltd">
            <p>
                <span>MODEL</span>
            </p>
        </th>
        <th dir="ltr" class="celltd">
            <p>
                <span>MANUFACTURER</span>
            </p>
        </th>
        <th dir="ltr" class="celltd">
            <p>
                <span>DRIVERS</span>
            </p>
        </th>
        <th dir="ltr" class="celltd">
            <p>
                <span>DELETE</span>
            </p>
        </th>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td dir="ltr" class="celltr">
                <c:out value="${car.id}" />
            </td>
            <td dir="ltr" class="celltr">
                <c:out value="${car.model}" />
            </td>
            <td dir="ltr" class="celltr">
                <c:out value="${car.manufacturer.name}" />
            </td>
            <td dir="ltr" class="celltr">
                <c:forEach items="${car.drivers}" var="drivers">
                    <c:out value="${drivers.name}" /><br>
                    <c:out value="${drivers.license_number}" />
                </c:forEach>
            </td>
            <td dir="ltr" class="celltr">
                <p></p><a href="${pageContext.request.contextPath}/drivers/delete?id=${car.id}">
                You can delete this car</a>
            </td>
        </tr>
    </c:forEach>
</table>
<div id="wb_Heading2" style="position:absolute;left:54px;top:305px;width:221px;height:32px;z-index:2;">
    <h5 id="Heading2">
        <a href="${pageContext.request.contextPath}/index.html">Return to start page</a>
    </h5>
</div>
</body>
</html>