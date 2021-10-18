<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add Driver Menu</title>
</head>
  <body>
    <%@include file="/WEB-INF/views/header.jsp"%>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/update">
      <h3> ID</h3>
      <input type="text" name="id" value="${manufacturer.id}" readonly>
      <br>
      <h3> Name</h3>
      <input type="text" name="name" value="${manufacturer.name}">
      <br>
      <h3>License Number</h3>
      <input type="text" name="country" value="${manufacturer.country}">
      <br>
      <button type="submit">Update</button>
    </form>
  </body>
</html>
