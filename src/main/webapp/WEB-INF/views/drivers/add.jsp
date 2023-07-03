<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a driver</title>
</head>
<%@include file="../headers/emptyHeader.jsp" %>
<body>
<div class="container mt-4 text-center">
    <h1 class="display-5">Add driver</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        <div class="mb-3">
            <label class="form-label">Name</label>
            <input class="form-control" type="text" name="name" required>
        </div>
        <div class="mb-3">
            <label class="form-label">License number</label>
            <input class="form-control" type="number" name="license_number" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Login</label>
            <input class="form-control" type="text" name="login" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Password</label>
            <input class="form-control" type="password" name="password" required>
        </div>
        <button type="submit" class="btn btn-primary">Create</button>
    </form>
</div>
</body>
</html>
