<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
    <h1>List of manufacturers!</h1>
    <%@include file="/WEB-INF/views/header.jsp"%><br>
    <table>
        <tr>
            <td>ID</td>
            <td>NAME</td>
            <td>COUNTRY</td>
        </tr>
        <c:forEach items="${manufacturers}" var="manufacturer">
            <tr>
                <td><c:out value="${manufacturer.id}" /></td>
                <td><c:out value="${manufacturer.name}" /></td>
                <td><c:out value="${manufacturer.country}" /></td>
                <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">
                    <input type="button" value="Delete Manufacturer"></a></td>
            </tr>
        </c:forEach>
    </table>
    <form method="get" action="${pageContext.request.contextPath}/manufacturers/create">
        <button type="submit">Create manufacturer</button>
    </form>
</body>
</html>
