<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
  <jsp:include page="../header.jsp"/>
  <div class="content">
    <form action="/cars/drivers/add" method="post">
      <jsp:useBean id="drivers" scope="request" type="java.util.List"/>
      <div class="input__form">
        <label for="choose__driver">Choose Driver:</label>
        <select name="driver_id" id="choose__driver">
          <c:if test="${drivers.isEmpty()}">
            <option value="1">Empty</option>
          </c:if>
          <c:forEach var="car" items="${drivers}">
            <option value="${car.getId()}">${car.getName()}</option>
          </c:forEach>
        </select>
      </div>
      <br/>
      <jsp:useBean id="cars" scope="request" type="java.util.List"/>
      <div class="input__form">
        <label for="choose__car">Choose car:</label>
        <select name="car_id" id="choose__car">
          <c:if test="${cars.isEmpty()}">
            <option value="1">Empty</option>
          </c:if>
          <c:forEach var="car" items="${cars}">
            <option value="${car.getId()}">${car.getModel()}</option>
          </c:forEach>
        </select>
      </div>
      <br/>
      <c:choose>
        <c:when test="${!drivers.isEmpty() && !cars.isEmpty()}">
          <input type="submit" value="add">
        </c:when>
        <c:otherwise>
          You can't add because you did not add a car or driver
        </c:otherwise>
      </c:choose>
    </form>
  </div>
</body>
</html>
