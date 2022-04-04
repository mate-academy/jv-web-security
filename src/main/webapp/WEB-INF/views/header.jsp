<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file="css/styled-header.css"%>
</style>
<html>
<head>
  <title>Header</title>
</head>
<body>
<header class="site-header">
  <div class="site-identity">
    <h1><a href="${pageContext.request.contextPath}/index">Taxi Application</a></h1>
  </div>
  <nav class="site-navigation">
    <ul class="nav">
      <li><a href="${pageContext.request.contextPath}/index">Home</a></li>
      <li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
    </ul>
  </nav>
</header>
</body>
</html>
