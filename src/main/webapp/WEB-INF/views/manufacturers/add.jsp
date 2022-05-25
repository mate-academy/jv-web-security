<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/index.jsp"/>
    <div class="formStyle">
        <form method="post" id="manufacturer" action="${pageContext.request.contextPath}/manufacturers/add">
            <div class="formTitle">Name</div>
            <div class="formTitle">
                <input type="text" name="name" form="manufacturer" required></br>
            </div>
            <div class="formTitle">Country</div>
            <div class="formTitle">
                <input type="text" name="country" form="manufacturer" required></br>
            </div>
            <div class="formTitle">
                <input type="submit" name="add" form="manufacturer" required>
            </div>
        </form>
    </div>
</table>
</body>
</html>
