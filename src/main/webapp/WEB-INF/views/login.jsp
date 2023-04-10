<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <style>
        <%@include file='/WEB-INF/views/css/style.css' %>
    </style>
</head>
<body>
<p><b>Login driver:</b></p>
<form method="POST" action="${pageContext.request.contextPath}/login">
    <div class="mb-3">
        <label for="name" class="form-label">Login</label>
        <input type="text" class="form-control" id="name" name="login" value="${login}" required>
    </div>
    <div class="mb-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" id="password" name="password" value="${password}" required>
        <div class="text-danger">
            <c:if test="${error != null}">
                <c:out value="${error}"/>
            </c:if>
        </div>
    </div>
    <button type="submit" class="btn btn-primary">Login</button>
    <a class="btn btn-success" href="${pageContext.request.contextPath}/drivers/create">Registration</a>
</form>
</body>
</html>
