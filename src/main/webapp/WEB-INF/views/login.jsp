<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<%@include file="headers/emptyHeader.jsp" %>
<body>
<div class="container mt-4 text-center">
    <h1 class="display-5">Login</h1>
    <form method="post" action="${pageContext.request.contextPath}/login">
        <div class="mb-3">
            <label class="form-label">Login</label>
            <input class="form-control" type="text" name="login" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Password</label>
            <input class="form-control" type="password" name="password" required>
        </div>
        <h6 style="color: red">${errorMsg}</h6>
        <button type="submit" class="btn btn-primary">Login</button>
    </form>
</div>
</body>
</html>