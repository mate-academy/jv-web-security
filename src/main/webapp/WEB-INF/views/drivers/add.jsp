<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Add drivers</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/index.jsp"/>
<div class="formStyle">
    <form method="post" id="driver" action="${pageContext.request.contextPath}/drivers/add">
        <div class="formTitle">Driver name</div>
        <div class="formTitle">
            <input type="text" name="name" form="driver" required></br>
        </div>
        <div class="formTitle">License number</div>
        <div class="formTitle">
            <input type="text" name="license_number" form="driver" required></br>
        </div>
        <div class="formTitle">
            <input type="submit" name="add" form="driver">
        </div>
    </form>
</div>
</table>
</body>
</html>

