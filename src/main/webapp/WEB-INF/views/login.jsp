<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Log in</title>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp" %>
<form method="post" id="sign_in" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Use your driver account</h1>
<table class="table_dark">
    <tr>
        <th>
            <input type="text" name="login" form="sign_in" placeholder="Login" required>
        </th>
    </tr>
    <tr>
        <th>
            <input type="password" name="password" form="sign_in" placeholder="Password" required>
        </th>
    </tr>
    <tr>
        <td>
            <input type="submit" name="submit" form="sign_in" value="Log in" required>
        </td>
    </tr>
</table>
<h3 style="color: red; text-align: center">${errorMsg}</h3>
</body>
</html>
