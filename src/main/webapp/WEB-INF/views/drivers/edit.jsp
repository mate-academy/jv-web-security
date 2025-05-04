<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Edit driver</title>
  <style>
    <%@include file='/WEB-INF/views/css/bootstrap.min.css' %>
    <%@include file='/WEB-INF/views/css/style.css' %>
  </style>
</head>
<body>
<p><b>Edit driver:</b></p>
<form method="POST" action="${pageContext.request.contextPath}/drivers/edit">
  <div class="mb-3">
    <label for="id" class="form-label">Id</label>
    <input type="text" class="form-control" id="id" value="${id}" disabled>
    <input type="hidden" value="${id}" name="id">
  </div>
  <div class="mb-3">
    <label for="name" class="form-label">Name</label>
    <input type="text" class="form-control" id="name" name="name" value="${name}" required>
  </div>
  <div class="mb-3">
    <label for="license_number" class="form-label">License number</label>
    <input type="text" class="form-control" id="license_number" name="license_number" value="${license_number}" required>
  </div>
  <button type="submit" class="btn btn-primary">Edit</button>
  <a class="btn btn-dark" href="${pageContext.request.contextPath}/drivers">Cancel</a>
</form>
</body>
</html>
