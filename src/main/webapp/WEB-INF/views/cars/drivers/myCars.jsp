
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="/WEB-INF/views/drivers/headers.jsp"%>
<h1 class="table_dark">All my cars:</h1>
<table border="1" class="table_dark">
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>License number</th>
</tr>

            <c:forEach var="cars" items="${cars}">
                <tr>
                <td>
                    <c:out value="${cars.id}"/>
                </td>
                <td>
                    <c:out value="${cars.model}"/>
                </td>
                <td>
                    <c:out value="${cars.manufacturer}"/>
                </td>
                </tr>
            </c:forEach>

</table>

</body>
</html>
