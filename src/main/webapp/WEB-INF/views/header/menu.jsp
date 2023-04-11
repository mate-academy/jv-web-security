<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file="css/style.css"%>
</style>
<header>

  <a href="#" class="logo">TAXI MANAGEMENT</a>

  <nav>
    <ul>
      <li><a href="${pageContext.request.contextPath}/">HOME</a></li>
      <li><a href="${pageContext.request.contextPath}/manufacturers">MANUFACTURERS</a></li>
      <li><a href="${pageContext.request.contextPath}/cars">CARS</a></li>
      <li><a href="${pageContext.request.contextPath}/drivers">DRIVERS</a></li>
      <c:if test="${user_name != null}">
        <li><a href="${pageContext.request.contextPath}/profile">${user_name}</a></li>
        <li><a href="${pageContext.request.contextPath}/logout">EXIT</a></li>
      </c:if>
    </ul>
  </nav>
</header>
