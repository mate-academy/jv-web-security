<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        <%@include file='/WEB-INF/views/css/background-styles.css'%>
    </style>
    <title>Add new driver</title>
</head>
<body>
    <h1>For add new Driver fill in the forms below</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        <label>Driver Name</label><br>
        <input type="text" name="name"><br>
        <label>License Number</label><br>
        <input type="text" name="license_number"><br><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
