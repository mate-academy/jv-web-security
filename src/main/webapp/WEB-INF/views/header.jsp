<%--
  Created by IntelliJ IDEA.
  User: livei
  Date: 5/16/2023
  Time: 10:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table class="table_dark">
    <tr>
        <th align="left">Your name: <c:out value="${driver_name}"/></th>
        <th align="left">Your licence id: <c:out value="${driver_license}"/></th>
        <th align="right"><a href="${pageContext.request.contextPath}/logout">Logout</a></th>
    </tr>
</table>

</body>
</html>
