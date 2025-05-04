<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Drivers</title>
</head>
<body>
  <jsp:include page="../header.jsp"/>
  <div class="content">
    <table class="__table">
      <thead>
      <tr>
        <th>id</th>
        <th>name</th>
        <th>license number</th>
      </tr>
      </thead>
      <tbody>
      <jsp:useBean id="drivers" scope="request" type="java.util.List"/>
      <c:forEach var="car" items="${drivers}">
        <tr>
          <td>${car.getId()}</td>
          <td>${car.getName()}</td>
          <td>${car.getLicenseNumber()}</td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
    <a href="drivers/add">add driver</a>
  </div>
</body>
</html>
