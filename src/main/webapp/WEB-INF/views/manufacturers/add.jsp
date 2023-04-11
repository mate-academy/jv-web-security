<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>New manufacturer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
          crossorigin="anonymous">
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
            crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="/WEB-INF/views/navbar.jsp" />
<div class="container">
    <h1>Add new manufacturer</h1>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
        <div class="form-group row mt-3">
            <label for="input1" class="col-sm-2 col-form-label">Name</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="input1" name="name" placeholder="Name" required>
            </div>
        </div>
        <div class="form-group row mt-3">
            <label for="input2" class="col-sm-2 col-form-label">Country</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="input2" name="country" placeholder="Country" required>
            </div>
        </div>
        <div class="form-group row mt-3">
            <div class="col-sm-10">
                <button type="submit" class="btn btn-primary">ADD</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>


