<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/body_center.css' %>
</style>
<html>
<head>
    <title>ATMS-manufacturers</title>
</head>
<body class="body_center">
<%@ include file="/WEB-INF/views/commons/buttonHeader.jsp"%><br>
<h3>To add new manufacturer please fill the form:</h3><br>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Manufacturer name <input type="text" name="name" required><br>
    Manufacturer country <input type="text" name="country" required><br>
    <button type="submit">Add manufacturer</button>
</form><br>
<h3>List of manufacturers</h3>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Country</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">
                <input type="button" value="DELETE"></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
