<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars creation</title>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp"%><br>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model" required><br>
    Manufacturer <select name="manufacturer_id">
        <c:forEach items="${manufacturers}" var="manufacturer">
            <option value="${manufacturer.id}">
                <c:out value="${manufacturer.id}" />
                <c:out value="${manufacturer.name}" />
                <c:out value="${manufacturer.country}" />
            </option>
        </c:forEach>
    </select><br>
    <button type="submit">Confirm</button>
</form><br>
</body>
</html>
