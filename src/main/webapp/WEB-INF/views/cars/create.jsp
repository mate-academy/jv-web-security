<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<hr />
<br />
<h1>Add new car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    <table>
        <tr>
            <td><label for="model">Model:</label></td>
            <td><input type="text" id="model" name="model" placeholder="write model here"><br /></td>
        </tr>
        <tr>
            <td><label for="manufacturers">Manufacturer:</label></td>
            <td>
                <select id="manufacturers" name="manufacturer_id">
                    <c:forEach items="${manufacturers}" var="manufacturer">
                        <option value="${manufacturer.id}">
                            <c:out value="${manufacturer.id}" />
                            <c:out value="${manufacturer.name}" />
                        </option>
                    </c:forEach>
                </select>
            </td><br />
        </tr>
        <tr>
            <td>
                <input type="submit" value="Add to DB">
                <input type="reset" value="reset">
            </td>
        </tr>
    </table>
</form>
