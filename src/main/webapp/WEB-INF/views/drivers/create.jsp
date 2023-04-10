<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create driver</title>
  <style>
    <%@include file='/WEB-INF/views/css/bootstrap.min.css' %>
    <%@include file='/WEB-INF/views/css/style.css' %>
  </style>
</head>
<body>
<p><b>Create new driver:</b></p>
<form method="POST" action="${pageContext.request.contextPath}/drivers/create">
  <div class="mb-3">
    <label for="name" class="form-label">Name</label>
    <input type="text" class="form-control" id="name" name="name" value="${name}" required>
  </div>
  <div class="mb-3">
    <label for="license_number" class="form-label">License number</label>
    <input type="text" class="form-control" id="license_number" name="license_number" value="${license_number}" required>
  </div>
  <div class="mb-3">
    <label for="login" class="form-label">Login</label>
    <input type="text" class="form-control" id="login" name="login" value="${login}" required>
  </div>
  <div class="mb-3">
    <label for="password" class="form-label">Password</label>
    <input type="password" class="form-control" id="password" name="password" value="${password}" required>
    <div class="text-danger">
      <c:if test="${error != null}">
        <c:out value="${error}"/>
      </c:if>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Create</button>
  <a class="btn btn-dark" href="${pageContext.request.contextPath}/drivers">Cancel</a>
</form>
</body>
</html>
