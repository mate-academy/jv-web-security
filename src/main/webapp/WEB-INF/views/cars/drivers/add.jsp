<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">
    <title>Taxi | Cars : Add driver</title>
</head>

<body>
<%@ include file="../../toolbar/header.jsp"%>
<div class="container">
    <h3>Added driver to car</h3>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        <div class="form-floating mb-3">
            <input type="hidden" class="form-control" id="car_id" name="car_id" value="${carId}">
        </div>
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="driver_id" name="driver_id"
                   placeholder="Enter driver id.">
            <label for="driver_id">Enter driver id.</label>
        </div>
        <div class="d-md-flex justify-content-md-end">
            <button type="submit" class="btn btn-outline-primary">Add</button>
        </div>
    </form>
</div>
</body>

</html>
