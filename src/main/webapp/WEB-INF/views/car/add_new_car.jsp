<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        <%@include file='/WEB-INF/views/css/common.css'%>
    </style>
    <%@include file='/WEB-INF/views/head.html'%>
    <title>Add new car</title>
</head>
<body>
<h1>For add new Driver fill in the forms below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <label>Model</label><br>
    <input type="text" name="model" required><br>
    <label>Manufacturer's id</label><br>
    <input type="number" name="manufacturer_id" required><br><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
