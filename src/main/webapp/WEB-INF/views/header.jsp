<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .logout-button-container {
        display: flex;
        justify-content: flex-end;
        margin-top: 10px;
        margin-right: 20px;
    }

    .logout-button {
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        padding: 8px 16px;
        cursor: pointer;
    }

    .logout-button:hover {
        background-color: #0056b3;
    }
</style>

<div class="logout-button-container">
    <a href="${pageContext.request.contextPath}/logout" class="logout-button">Logout</a>
</div>

