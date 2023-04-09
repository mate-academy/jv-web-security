<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main page taxi</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        body {
            padding: 20px;
        }
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
