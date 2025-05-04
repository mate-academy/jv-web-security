<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Header</title>
  <style>
    .table_header {
      font-size: 18px;
      margin-right: 0px;
      margin-left: auto;
    }
  </style>
</head>
<body>
<table class="table_header">
  <td><c:choose>
    <c:when test="${driver_name!=null}">
      Welcome, <c:out value="${driver_name}"></c:out>!
    </c:when>
    <c:otherwise>
      <a href="${pageContext.request.contextPath}/login">Login</a>
    </c:otherwise>
  </c:choose></td>
  <td>&nbsp;|&nbsp;</td>
  <td><a href="${pageContext.request.contextPath}/logout">Logout</a></td>
</table>
</body>
</html>
