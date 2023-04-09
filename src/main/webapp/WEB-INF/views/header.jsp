<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/style.css' %>
</style>
<html>
<head>
    <title>Logout</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/logout">
  <button class="button-logout" type="submit">Logout</button>
</form>
</body>
</html>
