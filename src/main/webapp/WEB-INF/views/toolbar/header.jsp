<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="row">
    <div class="offset-md-1 col-md-9">
        <ul class="nav justify-content-center">
            <li class="nav-item">
                <a class="nav-link" aria-current="page"
                   href="${pageContext.request.contextPath}/cars">Cars</a>
            </li>
            <li class="nav-item">
                <a class="nav-link"
                   href="${pageContext.request.contextPath}/drivers">Drivers</a>
            </li>
            <li class="nav-item">
                <a class="nav-link"
                   href="${pageContext.request.contextPath}/manufacturers">Manufacturers</a>
            </li>
            <li class="nav-item">
                <a class="nav-link"
                   href="${pageContext.request.contextPath}/drivers/cars">My cars</a>
            </li>
        </ul>
    </div>
    <div class="col-md-1 d-flex align-items-center">
        <a href="${pageContext.request.contextPath}/signout" type="button" class="text-decoration-none">SignOut</a>
    </div>
</nav>
