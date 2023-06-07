<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <style>
      <%@include file="/WEB-INF/style/style.css" %>
    </style>
  </head>
  <body>
  <div class="header__wrapper">
    <header>
      <nav class="header__navigation">
        <a href="/index"><img src="" alt="Logo"/></a>
        <a href="/my/cars">My cars</a>
        <a href="/cars">Cars</a>
        <a href="/drivers">Drivers</a>
        <a href="/manufacturers">Manufacturers</a>
      </nav>
      <div class="user__block">
        <a href="/logout">
          <%@include file="/WEB-INF/images/logout.svg" %>
        </a>
        <a href="">${login}</a>
      </div>
    </header>
    <hr/>
  </div>
  </body>
</html>
