<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Log in</title>
    <style>
      <%@include file="/WEB-INF/style/style.css" %>
    </style>
  </head>
<body>
    <div class="login__wrapper">
      <div class="login">
        <form action="/login" method="post">
          <div class="inner__form_separator">
            <label for="login">login:</label>
            <input name="login" type="text" id="login">
            <br>
            <label for="password">password:</label>
            <input name="password" type="password" id="password">
          </div>
          <br>
          <input type="submit">
        </form>
        <h4 style="color: red">${errorMsg}</h4>
        <a href="/register">Registration</a>
      </div>
    </div>
  </body>
</html>
