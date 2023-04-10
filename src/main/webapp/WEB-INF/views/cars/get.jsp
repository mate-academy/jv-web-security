<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>CARS</title>
</head>
<body>
<%@include file="/WEB-INF/views/header/menu.jsp"%>
<h1>Cars</h1>
<table>
    <tr>
        <th></th>
        <th>ID</th>
        <th>MODEL</th>
        <th>MANUFACTURER</th>
        <th>DRIVERS</th>
        <th></th>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td>
                <c:if test="${driver.permission == 'admin'}">
                    <input type="submit"
                       value="delete"
                       onclick="window.location.href =
                               '${pageContext.request.contextPath}/cars/delete?id=${car.id}'">

                </c:if>
            </td>
            <td><c:out value="${car.id}" /> </td>
            <td><c:out value="${car.model}" /> </td>
            <td><c:out value="${car.manufacturer}" /> </td>
            <td><c:out value="${car.drivers}" /></td>
            <td>
                <c:if test="${driver.permission == 'admin'}">
                    <input type="submit"
                               value="manage drivers"
                               onclick="window.location.href =
                                       '${pageContext.request.contextPath}/cars/manage?id=${car.id}'">
                </c:if>
            </td>

        </tr>
    </c:forEach>
</table>
<c:if test="${driver.permission == 'admin'}">
    <%@include file="create.jsp"%>
</c:if>
</body>
</html>
