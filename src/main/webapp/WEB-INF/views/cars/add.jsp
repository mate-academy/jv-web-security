<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a car</title>
</head>
<%@include file="../headers/mainHeader.jsp" %>
<body>
<div class="container mt-4 text-center">
    <h1 class="display-5">Add car</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        <div class="mb-3">
            <label class="form-label">Model</label>
            <input class="form-control" type="text" name="model" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Manufacturer ID</label>
            <input class="form-control" type="number" name="manufacturer_id" required>
        </div>
        <button type="submit" class="btn btn-primary">Create</button>
    </form>
</div>
</body>
</html>

