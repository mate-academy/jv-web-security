<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/header.css' %>
</style>
<html>
<head>
    <title>Header</title>
    <script>
        <%@include file='/WEB-INF/views/js/ChooseHeaderButton.js' %>
    </script>
</head>
<body>
<div>
    <button id="header_button" onclick="document.location = '${pageContext.request.contextPath}/logout'">Logout</button>
</div>
<script>chooseButton()</script>
</body>
</html>
