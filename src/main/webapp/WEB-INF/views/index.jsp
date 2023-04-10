<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main page taxi</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <style>
        <%@include file='/WEB-INF/views/css/style.css' %>
    </style>
</head>
<body>
    <nav class="navbar navbar-light" style="background-color: lightgray;">
        <div class="container-fluid">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/manufacturers">Manufacturers</a>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/drivers">Drivers</a>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/cars">All cars</a>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/drivers/cars">Cars of current user</a>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/logout">Logout</a>
        </div>
    </nav>
    <br>
</body>
</html>
