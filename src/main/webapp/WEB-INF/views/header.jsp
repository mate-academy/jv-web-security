<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file="css/table_dark.css"%>
</style>
<header>
  <form method="post" id="redirect"></form>
  <a href="#" class="logo">TAXI MANAGEMENT</a>

  <nav>
    <ul>
      <li>
        <a href="${pageContext.request.contextPath}/manufacturers">Display Manufacturers &bigtriangledown;</a>
        <ul>
          <li>
            <a href="${pageContext.request.contextPath}/manufacturers/add">Create Manufacturer</a>
          </li>
        </ul>
      </li>
      <li>
        <a href="${pageContext.request.contextPath}/cars">Display Cars &bigtriangledown;</a>
        <ul>
          <li><a href="${pageContext.request.contextPath}/cars/add">Create Car</a></li>
        </ul>
      </li>
      <li><a href="${pageContext.request.contextPath}/drivers">Display drivers</a></li>
      <c:if test="${driver_id != null}">
        <li><a href="${pageContext.request.contextPath}/cars/my">${user_name}</a></li>
        <li><a href="${pageContext.request.contextPath}/logout">EXIT</a></li>
      </c:if>
    </ul>
  </nav>
</header>
