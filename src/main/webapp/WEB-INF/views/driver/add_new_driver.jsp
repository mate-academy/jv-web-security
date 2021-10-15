<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        <%@include file='/WEB-INF/views/css/common.css'%>
    </style>
    <%@include file='/WEB-INF/views/head.html'%>
    <title>Add new driver</title>
</head>
<body>
    <h1>For add new Driver fill in the forms below</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        <label>Driver Name</label><br>
        <input type="text" name="name" required><br>
        <label>License Number</label><br>
        <input type="text" name="license_number" required><br><br>
        <label>Driver login</label><br>
        <input type="text" name="login" required><br>
        <label>Driver password</label><br>
        <input type="text" name="password" required><br><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
