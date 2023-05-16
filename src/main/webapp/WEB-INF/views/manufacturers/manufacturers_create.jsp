<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturers creation</title>
</head>
<body>
  <%@include file="/WEB-INF/views/header.jsp"%><br>
  <h1>Manufacturers Form Menu!</h1>
  <form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
  </form>
</body>
</html>
