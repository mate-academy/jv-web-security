<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${driver_id != null}">
    <header style="display: flex; gap: 20px; justify-content: center; margin-bottom: 10px;">
        <span>Username: ${username}</span> <span>Name: ${name}</span>
        <button type="button" onclick="location.href = '${pageContext.request.contextPath}/logout'">Logout</button>
    </header>
</c:if>



