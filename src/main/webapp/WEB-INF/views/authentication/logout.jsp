<%--
  Created by IntelliJ IDEA.
  User: Oles
  Date: 17.05.2023
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Logged In</title>
</head>
<body>
<table style="width: 20%">
    <tr>
        <td>
            <% String username = request.getParameter("username"); %>
            <a>Welcome user, you have logged in.</a></td>
    </tr>
    <tr></tr>
    <tr>td></td>
        <td><a href=login.jsp"><b>Logout</b></a></td>
    </tr>
</table>
</body>
</html>
