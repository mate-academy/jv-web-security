<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>add manufacturers</title>
</head>
  <body>
    <jsp:include page="../header.jsp"/>
    <div class="content">
      <form action="/manufacturers/add" method="post">
        <div class="input__form">
          <label for="name">Name:</label>
          <input name="name" id="name" type="text" required>
        </div>
        <br/>
        <div class="input__form">
          <label for="country">Country:</label>
          <input name="country" id="country" type="text" required>
        </div>
        <br/>
        <input type="submit" value="add">
      </form>
    </div>
  </body>
</html>
