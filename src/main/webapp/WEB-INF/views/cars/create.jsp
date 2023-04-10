<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <style>
        <%@include file='/WEB-INF/views/css/style.css'%>
    </style>
</head>
<body>
<p><b>Create new car:</b></p>
<form method="POST" action="${pageContext.request.contextPath}/cars/create">
    <div class="mb-3">
        <label for="model" class="form-label">Model</label>
        <input type="text" class="form-control" id="model" name="model" required>
    </div>
    <div class="mb-3">
        <label for="manufacturer" class="form-label">Manufacturer</label>
        <select requred class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" id="manufacturer" name="manufacturer">
            <c:forEach items="${manufacturers}" var="manufacturer">
                <option value="${manufacturer.id}">${manufacturer.name} - ${manufacturer.country}</option>
            </c:forEach>
        </select>
    </div>
    <button type="submit" class="btn btn-primary">Create</button>
    <a class="btn btn-dark" href="${pageContext.request.contextPath}/cars">Cancel</a>
</form>
</body>
</html>

