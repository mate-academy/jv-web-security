<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
    <c:when test="${isLoggedIn == true}">
        <a href="${pageContext.request.contextPath}/logout">Logout</a>
        <a href="${pageContext.request.contextPath}/index">Menu</a>
        <a href="${pageContext.request.contextPath}/driver/cars">My cars</a>
    </c:when>
    <c:otherwise>
        <a href="${pageContext.request.contextPath}/login">Login page</a>
        <a href="${pageContext.request.contextPath}/drivers/add">Add a driver</a>
    </c:otherwise>
</c:choose>
