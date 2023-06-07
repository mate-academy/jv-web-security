<%--
  Created by IntelliJ IDEA.
  User: kyrylh
  Date: 4/6/23
  Time: 4:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>add driver</title>
</head>
<body>
  <jsp:include page="../header.jsp"/>
  <div class="content">
    <form action="/drivers/add" method="post">
      <div class="input__form">
        <label for="input_name">Name:</label>
        <input name="name" id="input_name" type="text" required>
      </div>
      <br/>
      <div class="input__form">
        <label for="input_license_number">License number:</label>
        <input name="license_number" id="input_license_number" type="text" required>
      </div>
      <br/>
      <input type="submit" value="add">
    </form>
  </div>
</body>
</html>
