<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<hr />
<br />
<h1>Add new manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    <table>
        <tr>
            <td><label for="name">Name:</label></td>
            <td><input type="text" id="name" name="name" placeholder="write name here"><br /></td>
        </tr>
        <tr>
            <td><label for="country">Country:</label></td>
            <td><input type="text" id="country" name="country" placeholder="write country here"><br /></td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Add to DB" />
                <input type="reset" value="reset">
            </td>
        </tr>
    </table>
</form>
