<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Сергей
  Date: 19.11.2024
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<body>
<h2>All Users</h2>
<br>
<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>

        <th>Operations</th>
    </tr>

<c:forEach var="user" items="${allUsers}">

    <c:url var="updateButton" value="/updateInfo">
        <c:param name="userId" value="${user.id}"/>


    </c:url>


    <c:url var="deleteButton" value="/deleteUser">
        <c:param name="userId" value="${user.id}"/>


    </c:url>

    <tr>
        <td>${user.name}</td>
        <td>${user.surname}</td>
        <td>${user.department}</td>
        <td>${user.salary}</td>
        <td>
            <input type="button" value="Update"
                   onclick="window.location.href = '${updateButton}'"/>

            <input type="button" value="Delete"
                   onclick="window.location.href = '${deleteButton}'"/>
        </td>


    </tr>
</c:forEach>

</table>
<br>
<input type="button" value="Add"
onclick="window.location.href = 'addNewUser'"/>


</body>
</html>
