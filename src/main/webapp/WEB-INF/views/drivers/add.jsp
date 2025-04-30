<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
    .header {
        background-color: #7C5FAB;
        color: #FFF;
        padding: 20px;
        text-align: center;
        font-size: 24px;
    }
</style>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<form method="post" id="driver" action="${pageContext.request.contextPath}/drivers/add"></form>
<div class="header">
    <h1>Add driver:</h1>
</div>
<table border="1" class="table_dark">
    <tr>
        <th>Name</th>
        <th>License number</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="name" form="driver" required>
        </td>
        <td>
            <input type="text" name="license_number" form="driver" required>
        </td>
        <td>
            <input type="submit" name="add" form="driver">
        </td>
    </tr>
</table>
<%@include file='/WEB-INF/views/header.jsp'%>
</body>
</html>
