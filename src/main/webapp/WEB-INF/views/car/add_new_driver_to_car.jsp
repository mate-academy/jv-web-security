<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        <%@include file='/WEB-INF/views/css/background-styles.css'%>
    </style>
    <title>Add new driver to car</title>
</head>
<body>
<h1>For add new Driver to Car fill in the forms below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add/driver">
    <label>Car's id</label><br>
    <input type="number" name="car_id"><br>
    <label>Driver's id</label><br>
    <input type="number" name="driver_id"><br><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
