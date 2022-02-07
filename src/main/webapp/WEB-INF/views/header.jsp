<%@ page contentType="text/html;charset=UTF-8" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
</head>
<h2><tr><td><a href="${pageContext.request.contextPath}/logout">Logout</a></td></tr></h2>
Today is: <%= java.util.Calendar.getInstance().getTime() %>
</body>
</html>
