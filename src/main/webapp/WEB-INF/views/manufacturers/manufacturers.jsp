<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufactures</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header/buttonHeader.jsp"%><br>
<h1 style="font-size: 24px;font-family: Calibri,serif;">Create manufacturer</h1>
<form method="post"
      action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Create</button>
</form>
<p align="center">
<h1 style="font-size: 24px;font-family: Calibri,serif">List of manufacturers</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
    </tr>
    <c:forEach items="${manufacturers}" var = "manufacturer">
        <tr>
            <td><c:out value ="${manufacturer.id}"/>

            </td>
            <td><c:out value ="${manufacturer.name}"/></td>
            <td><c:out value ="${manufacturer.country}"/></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">
                <input type="button" value="DELETE"></a></td>
        </tr>
    </c:forEach>
</table>
</p>
</body>
</html>
