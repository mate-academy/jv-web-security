<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello welcome :)))</title>
</head>
<body>
<h2>  <%@include file="header.jsp"%></h2>
<table class="table_dark">
    <tr>
        <th>Redirect to</th>
    </tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers/add">Create new Manufacturer</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver to Car</a></td></tr>
</table>
</body>
</html>
