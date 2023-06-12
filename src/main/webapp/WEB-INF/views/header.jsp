<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
  <div class="dropdown">
    <button class="dropbtn">Drivers</button>
    <div class="dropdown-content">
      <a href="${pageContext.request.contextPath}/drivers">getDrivers</a>
      <a href="${pageContext.request.contextPath}/drivers/add">addDriver</a>
      <a href="${pageContext.request.contextPath}/cars/drivers/add">addDriverToCar</a>
    </div>
  </div>

  <div class="dropdown">
    <button class="dropbtn">Cars</button>
    <div class="dropdown-content">
      <a href="${pageContext.request.contextPath}/cars/add">addCar</a>
      <a href="${pageContext.request.contextPath}/cars">getCars</a>
      <a href="${pageContext.request.contextPath}/cars/mine">getMyCars</a>
    </div>
  </div>

  <div class="dropdown">
    <button class="dropbtn">Manufacturers</button>
    <div class="dropdown-content">
      <a href="${pageContext.request.contextPath}/manufacturers/add">addManufacturer</a>
    </div>
  </div>

  <c:choose>
    <c:when test="${empty sessionScope.driverId}">
      <div class="login-button">
        <a href="${pageContext.request.contextPath}/login">Login</a>
      </div>
    </c:when>
    <c:otherwise>
      <div class="logout-button">
        <a href="${pageContext.request.contextPath}/logout">Logout</a>
      </div>
    </c:otherwise>
  </c:choose>


</header>