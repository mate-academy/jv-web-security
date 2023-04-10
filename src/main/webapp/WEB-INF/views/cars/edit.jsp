<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create car</title>
  <style>
    <%@include file='/WEB-INF/views/css/bootstrap.min.css' %>
    <%@include file='/WEB-INF/views/css/style.css' %>
  </style>
</head>
<body>
<p><b>Create new car:</b></p>
<form method="POST" action="${pageContext.request.contextPath}/cars/edit">
  <div class="mb-3">
    <label for="id" class="form-label">Id</label>
    <input type="text" class="form-control" id="id" value="${id}" disabled>
    <input type="hidden" name="id" value="${id}">
  </div>
  <div class="mb-3">
    <label for="model" class="form-label">Model</label>
    <input type="text" class="form-control" id="model" name="model" value="${model}" required>
  </div>
  <div class="mb-3">
    <label for="manufacturer" class="form-label">Manufacturer</label>
    <select requred class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" id="manufacturer" name="manufacturer_id" value="${manufacturer_id}">
      <c:forEach items="${manufacturers}" var="manufacturer">
      <option value="${manufacturer.id}" <c:if test="${manufacturer.id == manufacturer_id}">selected</c:if>>
          ${manufacturer.name} - ${manufacturer.country}
      </option>
      </c:forEach>
    </select>
  </div>
  <button type="submit" class="btn btn-primary">Edit</button>
  <a class="btn btn-dark" href="${pageContext.request.contextPath}/cars">Cancel</a>
</form>
</body>
</html>
