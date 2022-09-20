<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">
    <title>Taxi | Cars : Add car</title>
</head>

<body>
<%@ include file="../toolbar/header.jsp"%>
<div class="container">
    <h3>Create new car</h3>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="model" name="model"
                   placeholder="Enter car's model.">
            <label for="model">Enter car's model.</label>
        </div>
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="manufacturer_id" name="manufacturer_id"
                   placeholder="Enter manufacturer id.">
            <label for="manufacturer_id">Enter manufacturer id.</label>
        </div>
        <div class="d-md-flex justify-content-md-end">
            <button type="submit" class="btn btn-outline-primary">Create</button>
        </div>
    </form>
</div>
</body>

</html>
