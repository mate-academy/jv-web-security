<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Navbar</title>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark" aria-label="Fourth navbar example">
    <div class="container-fluid">
        <a class="navbar-brand mb-1" href="${pageContext.request.contextPath}/home">Taxi service</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExample04">
            <ul class="navbar-nav me-auto mb-2 mb-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link active dropdown-toggle" id="dropdown04" data-bs-toggle="dropdown" aria-expanded="false">Drivers</a>
                    <ul class="dropdown-menu" aria-labelledby="dropdown04">
                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/drivers">Drivers list</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link active dropdown-toggle" id="dropdown05" data-bs-toggle="dropdown" aria-expanded="false">Cars</a>
                    <ul class="dropdown-menu" aria-labelledby="dropdown05">
                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/cars">Cars list</a></li>
                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/cars/add">Add new car</a></li>
                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/cars/drivers/add">Add car to driver</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link active dropdown-toggle" id="dropdown06" data-bs-toggle="dropdown" aria-expanded="false">Manufacturers</a>
                    <ul class="dropdown-menu" aria-labelledby="dropdown06">
                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/manufacturers">Manufacturers list</a></li>
                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/manufacturers/add">Add new manufacturer</a></li>
                    </ul>
                </li>
            </ul>
            <a class="btn btn-secondary" href="${pageContext.request.contextPath}/logout" role="button">Logout</a>
        </div>
    </div>
</nav>
</body>
</html>
