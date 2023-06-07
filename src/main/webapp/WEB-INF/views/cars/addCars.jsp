<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
  <jsp:include page="../header.jsp"/>
  <div class="content">
    <form action="/cars/add" method="post">
      <div class="input__form">
        <label for="car">Car name:</label>
        <input name="model" id="car" type="text">
      </div>
      <br/>
      <div class="input__form">
        <label for="choose__manufacturer">Manufacturer:</label>
        <select name="manufacturer" id="choose__manufacturer">
          <jsp:useBean id="manufacturers" scope="request" type="java.util.List"/>
          <c:if test="${manufacturers.isEmpty()}">
            <option value="1">Empty</option>
          </c:if>
          <c:forEach var="manufacturer" items="${manufacturers}">
            <option value="${manufacturer.getId()}">${manufacturer.getName()}</option>
          </c:forEach>
        </select><br/>
      </div>
      <c:choose>
        <c:when test="${!manufacturers.isEmpty()}">
          <input type="submit" value="add">
        </c:when>
        <c:otherwise>
          You can't add because you did not add a manufacturer
        </c:otherwise>
      </c:choose>
    </form>
  </div>
</body>
</html>
