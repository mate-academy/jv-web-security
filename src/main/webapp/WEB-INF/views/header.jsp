<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Header</title>
</head>
<body>
    <a href="${pageContext.request.contextPath}/home">
      <input type="button" value="Home" />
    </a>
    <a href="${pageContext.request.contextPath}/manufacturers">
      <input type="button" value="Manufacturers" />
    </a>
    <a href="${pageContext.request.contextPath}/drivers">
      <input type="button" value="Drivers" />
    </a>
    <a href="${pageContext.request.contextPath}/cars">
      <input type="button" value="Cars" />
    </a>
    <a href="${pageContext.request.contextPath}/drivers/cars">
      <input type="button" value="My cars" />
    </a>
    <a href="${pageContext.request.contextPath}/logout">
      <input type="button" value="Logout" />
    </a><br><br>
</body>
</html>
