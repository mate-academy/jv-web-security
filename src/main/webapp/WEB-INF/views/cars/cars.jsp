<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
  <body>
    <jsp:include page="../header.jsp"/>
    <div class="content">
      <table class="__table">
        <thead>
          <tr>
            <th>id</th>
            <th>model</th>
            <th>manufacturer name</th>
            <th>manufacturer country</th>
          </tr>
        </thead>
        <tbody>
        <jsp:useBean id="cars" scope="request" type="java.util.List"/>
        <c:forEach var="car" items="${cars}">
          <tr>
            <td>${car.getId()}</td>
            <td>${car.getModel()}</td>
            <td>${car.getManufacturer().getName()}</td>
            <td>${car.getManufacturer().getCountry()}</td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
      <br/>
      <a href="/cars/add">add car</a>
      <a href="/cars/drivers/add">add driver to car</a>

    </div>
  </body>
</html>
