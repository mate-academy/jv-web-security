<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Manufacturers</title>
</head>
<body>
  <jsp:include page="../header.jsp"/>
  <div class="content">
    <table class="__table">
      <thead>
      <tr>
        <th>id</th>
        <th>name</th>
        <th>country</th>
      </tr>
      </thead>
      <tbody>
      <jsp:useBean id="manufacturers" scope="request" type="java.util.List"/>
      <c:forEach var="manufacturer" items="${manufacturers}">
        <tr>
          <td>${manufacturer.getId()}</td>
          <td>${manufacturer.getName()}</td>
          <td>${manufacturer.getCountry()}</td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
    <a href="manufacturers/add">add manufacturer</a>
  </div>
</body>
</html>
