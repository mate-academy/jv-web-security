<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>CARS DRIVERS</title>
</head>
<body>
<%@include file="/WEB-INF/views/header/menu.jsp"%>
<h1>Cars drivers</h1>
<table>
    <tr>
      <th>ID</th>
      <th>MODEL</th>
      <th>MANUFACTURER</th>
      <th>DRIVERS</th>
    </tr>
    <td>${car.id}</td>
    <td>${car.model}</td>
    <td>${car.manufacturer}</td>
    <td>
      <select id="driver_id" name="driver_id">
        <c:forEach items="${car.drivers}" var="driver">
          <option value="${driver.id}">
            <c:out value="${driver.id}" />
            <c:out value="${driver.name}" />
          </option>
        </c:forEach>
      </select>
    </td>
    <td>
      <input type="submit"
             value="delete this driver"
             onclick="window.location.href =
                     '${pageContext.request.contextPath}/cars/manage/delete?driver_id='
                     + document.getElementById('driver_id').value + '&car_id=${car.id}'">
    </td>
</table>
<hr /><br />
<h1>Add driver to this car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/manage?id=${car.id}">
    <table>
        <tr>
            <td>
                <select name="driver_id">
                    <c:forEach items="${drivers}" var="driver">
                        <option value="${driver.id}">
                            <c:out value="${driver.id}" />
                            <c:out value="${driver.name}" />
                        </option>
                    </c:forEach>
                </select>
            </td>
            <td>
                <input type="submit"
                       value="add to current car"
                       onclick="window.location.href =
                               '${pageContext.request.contextPath}/cars/manage?id=${car.id}'">
            </td>
        </tr>
    </table>
</form>
<br />
<input type="submit"
       value="DONE"
       onclick="window.location.href =
               '${pageContext.request.contextPath}/cars'">
</body>
</html>
