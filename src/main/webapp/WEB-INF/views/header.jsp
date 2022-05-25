<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/header_style.css' %>
</style>
<html>
    <head>
        <title>Header</title>
    </head>
    <body>
        <header class="main-header">
            <div>
                <a href="${pageContext.request.contextPath}/logout">Log out</a>
            </div>
        </header>
    </body>
</html>
