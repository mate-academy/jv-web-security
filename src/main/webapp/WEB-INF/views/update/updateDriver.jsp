<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add Driver Menu</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/update">
  <h3> ID</h3>
  <input type="text" name="id" value="${driver.id}" readonly>
  <br>
  <h3> Name</h3>
  <input type="text" name="name" value="${driver.name}">
  <br>
  <h3>License Number</h3>
  <input type="text" name="license_number" value="${driver.licenseNumber}">
  <br>
  <button type="submit">Update</button>
</form>
</body>
</html>