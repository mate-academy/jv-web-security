<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <style>
    ul {
      font-family: "Trebuchet MS", Helvetica, sans-serif;
      list-style-type: none;
      margin: 0;
      padding: 0;
      overflow: hidden;
      background-color: #333;
    }
    li {
      float: left;
    }
    li a {
      display: block;
      color: white;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
    }
    li a:hover:not(.active) {
      background-color: #111;
    }
    .active {
      background-color: #398AA4;
    }
  </style>
</head>
<body>
<ul>
  <li><a href="${pageContext.request.contextPath}/drivers/cars">Home</a></li>
  <li><a href="${pageContext.request.contextPath}/drivers">Drivers</a></li>
  <li><a href="${pageContext.request.contextPath}/manufacturers">Manufacturers</a></li>
  <li><a href="${pageContext.request.contextPath}/cars">Cars</a></li>
  <li><a href="${pageContext.request.contextPath}/cars/add">Add car</a></li>
  <li><a href="${pageContext.request.contextPath}/manufacturers/add">Add manufacturer</a></li>
  <li><a href="${pageContext.request.contextPath}/cars/drivers/add">Set new car</a></li>
  <li style="float:right"><a class="active" href="${pageContext.request.contextPath}/logout">Log Out</a></li>
</ul>
</body>
</html>
