<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add Driver Menu</title>
    </head>
    <body>
        <form method="post" action="${pageContext.request.contextPath}/drivers/add">
            <h3> Name</h3>
            <input type="text" name="name">
            <br>
            <h3>License Number</h3>
            <input type="text" name="license_number">
            <br>
            <button type="submit">Create</button>
        </form>
    </body>
</html>