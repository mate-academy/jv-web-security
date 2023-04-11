<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>LOGIN</title>
<style>
  <%@include file="header/css/style.css"%>
</style>
</head>
  <body style="margin: auto">
      <table style="padding: 5px; margin: auto">
        <form method="post" action="${pageContext.request.contextPath}/login">
          <tr>
            <td><h2>Login: </h2></td>
            <td><input type="text" placeholder="User name" name="user_name"></td>
            <td><input type="password" placeholder="Password" name="password"></td>
            <td><input type="submit" value="enter"></td>
            <td>
              <a href="${pageContext.request.contextPath}/drivers/create">
                <input type="button" value="Registration">
              </a>
            </td>
          </tr>
        </form>
      </table>
    <h4 align="center" style="color: red;">${errorMsg}</h4>
  </body>
</html>
