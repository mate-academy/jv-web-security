<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
    <style>
        <%@include file='/WEB-INF/views/css/bootstrap.min.css' %>
        <%@include file='/WEB-INF/views/css/style.css' %>
    </style>
</head>
<body>
<p><b>Create new manufacturer:</b></p>
<form method="POST" action="${pageContext.request.contextPath}/manufacturers/create">
    <div class="mb-3">
        <label for="name" class="form-label">Name</label>
        <input type="text" class="form-control" id="name" name="name" required>
    </div>
    <div class="mb-3">
        <label for="country" class="form-label">Country</label>
        <input type="text" class="form-control" id="country" name="country" required>
    </div>
    <button type="submit" class="btn btn-primary">Create</button>
    <a class="btn btn-dark" href="${pageContext.request.contextPath}/manufacturers">Cancel</a>
</form>
</body>
</html>
