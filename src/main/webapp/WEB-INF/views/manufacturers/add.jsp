<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a manufacturer</title>
</head>
<%@include file="../headers/mainHeader.jsp" %>
<body>
<div class="container mt-4 text-center">
    <h1 class="display-5">Add manufacturer</h1>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
        <div class="mb-3">
            <label class="form-label">Name</label>
            <input class="form-control" type="text" name="name" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Country</label>
            <input class="form-control" type="text" name="country" required>
        </div>
        <button type="submit" class="btn btn-primary">Create</button>
    </form>
</div>
</body>
</html>
