<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Output Manufacturers</title>
    <link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet">
</head>
<body>
<%@include file="${pageContext.request.contextPath}header.html" %>
<div id="wb_Heading">
    <h2 id="Heading">Enumeration of Manufactures</h2>
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
                <span>NAME</span>
            </p>
        </th>
        <th dir="ltr" class="celltd">
            <p>
                <span>COUNTRY</span>
            </p>
        </th>
        <th dir="ltr" class="celltd">
            <p>
                <span>DELETE</span>
            </p>
        </th>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td dir="ltr" class="celltr">
                <c:out value="${manufacturer.id}" />
            </td>
            <td dir="ltr" class="celltr">
                <c:out value="${manufacturer.name}" />
            </td>
            <td dir="ltr" class="celltr">
                <c:out value="${manufacturer.country}" />
            </td>
            <td dir="ltr" class="celltr">
                <a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">
                    You can delete this manufacturer</a>
            </td>
        </tr>
    </c:forEach>
</table>
<div id="wb_Heading2" style="position:absolute;left:54px;top:305px;width:221px;height:32px;z-index:2;">
    <h5 id="Heading2">
        <a href="${pageContext.request.contextPath}/index">Return to start page</a>
    </h5>
</div>
</body>
</html>