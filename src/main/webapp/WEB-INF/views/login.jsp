<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
  <title>Login</title>
</head>
<body>
<div style="font-family: arial,serif;
float: left; display: inline-block;
background: url('https://i2.paste.pics/N2F82.png')
no-repeat; width: 1466px; height: 674px">
<form method="post" id="redirect"></form>
<h1 class="table_dark">Login:</h1>
<h4 style="color: red">${errorMsg}</h4>
<table class="table_dark">
  <tr><td> <form method="post" action="${pageContext.request.contextPath}/login">
    Login: <input type="text" name="login" required>
    Password: <input type="password" name="password" required>
    <button type="submit">Login</button>
  </form>
    <a href="${pageContext.request.contextPath}/drivers/add"><button type="submit">Create an Account</button></a>
</table>
  <div class="footer">
    <p>java web application with jsp and jdbc <a href="https://github.com/EliSoll">GitHub: Elvira Solnyshkina</a><br>
      Image from <a href=" https://billionphotos.com">Billionphotos</a></p></div>
</div>
</body>
</html>
