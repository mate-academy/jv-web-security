<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>DRIVERS</title>
</head>
<body>
<%@include file="/WEB-INF/views/header/menu.jsp"%>
<h1>Drivers</h1>
<table>
    <tr >
        <th></th>
        <th>ID   </th>
        <th>NAME   </th>
        <th>USER NAME   </th>
        <th>LICENSE NUMBER</th>
    </tr>
    <c:forEach items="${drivers}" var="current_driver">
        <tr>
            <td>
                <c:if test="${driver.permission == 'admin'}">
                    <input type="submit"
                           value="delete"
                           onclick="window.location.href =
                                   '${pageContext.request.contextPath}/drivers/delete?id=${current_driver.id}'">
                </c:if>
            </td>
            <td><c:out value="${current_driver.id}" /> </td>
            <td><c:out value="${current_driver.name}" /> </td>
            <td><c:out value="${current_driver.userName}" /> </td>
            <td><c:out value="${current_driver.licenseNumber}" /> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
