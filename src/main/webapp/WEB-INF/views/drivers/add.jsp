<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
    <style>
        <%@include file="/WEB-INF/css/inputForm.css" %>
        <%@include file="/WEB-INF/css/header.css" %>
    </style>
    <%@include file="/WEB-INF/views/header.jsp" %>
</head>
<body>
<h1>Add driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Name: <input type="text" name="name" id="name"><br>
    <label for="licenseNumber">License Number:</label>
        <input type="text" name="licenseNumber" id="licenseNumber"><br>
    <label for="login">Login:</label>
        <input type="text" name="login" id="login"><br>
    <label for="password">Password:</label>
        <input type="password" name="password" id="password"><br>
        <input type="submit" value="Create">
</form>
</body>
</html>
