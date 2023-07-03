<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<%@include file="../../headers/mainHeader.jsp" %>
<body>
<div class="container mt-4 text-center">
    <h1 class="display-5">Add driver to car</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        <div class="mb-3">
            <label class="form-label">Car ID</label>
            <input class="form-control" type="number" name="car_id" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Driver ID</label>
            <input class="form-control" type="number" name="driver_id" required>
        </div>
        <button type="submit" class="btn btn-primary">Confirm</button>
    </form>
</div>
</body>
</html>

