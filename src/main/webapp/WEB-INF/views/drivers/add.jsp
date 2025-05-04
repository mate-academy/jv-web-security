<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add drivers</title>
</head>
<body>
<h1 style="font-size: 24px;font-family: Calibri,serif">Add new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/registration">
    Driver name <input type="text" name="name"><br>
    Driver login <input type="text" name="login"><br>
    Password <input type="password" name="password"><br>
    License number <input type="text" name="licenseNumber"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
