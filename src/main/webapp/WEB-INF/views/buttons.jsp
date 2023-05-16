<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Buttons</title>
</head>
<body>
<table>
    <tr>
        <td><a href="${pageContext.request.contextPath}/manufacturers">
            <input class="btn btn-primary" type="button" value="Show manufactures"/>
        </a></td>
        <td><a href="${pageContext.request.contextPath}/drivers">
            <input class="btn btn-primary" type="button" value="Show drivers"/>
        </a></td>
        <td><a href="${pageContext.request.contextPath}/cars">
            <input class="btn btn-primary" type="button" value="Show cars"/>
        </a></td>
        <td><a href="${pageContext.request.contextPath}/cars/drivers/add">
            <input class="btn btn-primary" type="button" value="Add driver to car"/>
        </a></td>
        <td><a href="${pageContext.request.contextPath}/logout">
            <input class="btn btn-primary" type="button" value="Log Out"/>
        </a></td>

    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/manufacturers/add">
            <input class="btn btn-primary" type="button" value="Add manufacture"/>
        </a></td>
        <td><a href="${pageContext.request.contextPath}/drivers/add">
            <input class="btn btn-primary" type="button" value="Add driver"/>
        </a></td>
        <td><a href="${pageContext.request.contextPath}/cars/add">
            <input class="btn btn-primary" type="button" value="Add car"/>
        </a></td>
        <td><a href="${pageContext.request.contextPath}/cars/my">
            <input class="btn btn-primary" type="button" value="Show my cars"/>
        </a></td>
    </tr>
</table>
</body>
</html>