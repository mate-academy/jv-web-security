<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<table class="table_dark">
    <tr>
        <td width="33%">
            <c:if test="${sessionScope.username == null}">
                Hi, login or registration is required to access all pages!
            </c:if>
            <c:if test="${sessionScope.username != null}">
                Hi, <c:out value="${sessionScope.username}"/>!
            </c:if>
        </td>
        <td width="34%">
            <a href="${pageContext.request.contextPath}/">Main menu</a>
        </td>
        <td>
            <c:if test="${sessionScope.username != null}">
                <a href="${pageContext.request.contextPath}/logout">Logout</a>
            </c:if>
            <c:if test="${sessionScope.username == null}">
                <a href="${pageContext.request.contextPath}/login">Login</a>
            </c:if>
        </td>
    </tr>
</table>

</body>
</html>
