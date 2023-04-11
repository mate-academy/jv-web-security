<form method="post" id="add_car" action="${pageContext.request.contextPath}/drivers/car/add"></form>
<hr />
<tr>
    <td><input type="submit" value="add this car" form="add_car"></td>
    <td>
        <select name="car_id" form="add_car">
            <c:forEach items="${all_cars}" var="car">
                <option value="${car.id}">${car.id}-${car.model}</option>
            </c:forEach>
        </select>
    </td>
</tr>