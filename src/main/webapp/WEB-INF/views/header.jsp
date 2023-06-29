<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
  <title>Logout</title>
</head>
<body>
<form method="get" id="logout" action="${pageContext.request.contextPath}/logout"></form>
<button form="logout">Logout</button>
</body>
</html>
