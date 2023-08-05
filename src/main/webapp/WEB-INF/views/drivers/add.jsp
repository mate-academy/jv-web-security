<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .table_dark {
        font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
        width: 70%;
        color: #7C5FAB;
        font-size: 40px;
        text-align: center;
        border-collapse: collapse;
        background: #FEF4AB;
        margin: auto;
    }

    .table_dark th {
        color: #7C5FAB;
        border-bottom: 1px solid #98E2CA;
        padding: 12px 17px;
        font-size: 14px;
    }

    .table_dark td {
        color: #7C5FAB;
        border-bottom: 1px solid #98E2CA;
        border-right: 1px solid #98E2CA;
        padding: 7px 17px;
        font-size: 14px;
    }

    .table_dark tr:last-child td {
        border-bottom: none;
    }

    .table_dark td:last-child {
        border-right: none;
    }

    .table_dark tr:hover td {
        text-decoration: underline;
    }
</style>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<form method="post" id="driver" action="${pageContext.request.contextPath}/drivers/add"></form>
<h1 class="table_dark">Add driver:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Name</th>
        <th>License number</th>
        <th>Login</th>
        <th>Password</th>
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
            <input type="text" name="login" form="driver" required>
        </td>
        <td>
            <input type="password" name="password" form="driver" required>
        </td>
        <td>
            <input type="submit" name="add" form="driver">
        </td>
    </tr>
</table>
</body>
</html>
