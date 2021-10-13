<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        <%@include file='/WEB-INF/views/css/background-styles.css'%>
        <%@include file='/WEB-INF/views/css/table-styles.css'%>
    </style>
    <title>Drivers</title>
</head>
<body>
    <H1>ALL DRIVERS</H1>
    <table>
        <tr>
            <td>id</td>
            <td>Name</td>
            <td>LicenseNumber</td>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}"/></td>
                <td><c:out value="${driver.name}"/></td>
                <td><c:out value="${driver.licenseNumber}"/></td>
                <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                    delete this Driver
                </a></td>
            </tr>
        </c:forEach>
    </table>
    <a href="${pageContext.request.contextPath}/drivers/add">Add new driver</a><br>
    <a href="${pageContext.request.contextPath}/">Go to main page</a><br>
</body>
</html>
