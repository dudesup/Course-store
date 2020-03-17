<%--
  Created by IntelliJ IDEA.
  User: Daria
  Date: 17.03.2020
  Time: 06:41
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <%@ include file="/header.jsp" %>
</head>
<body>
<%@ include file="/menu.jsp" %>
<h2>Użytkownic</h2>
<hr>
<div class="container">
    <table class="table">
        <tr>
            <th>Login</th>
            <th>Name</th>
            <th>Address email</th>
            <th>Usuń</th>
            <th>Edytuj</th>
        </tr>
        <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.login}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <c:if test="${user.login != 'admin'}">
            <td><form method="post" action="/deleteUser">
                <input type="hidden" name="login" value="${user.login}">
                <input type="submit" value="Usuń">
            </form>
            </td>
            <td><form method="post" action="/editUser">
                <input type="hidden" name="login" value="${user.login}">
                <input type="submit" value="Edytuj">
            </form>
            </td>
            </c:if>
        <tr>
            </c:forEach>
    </table>
</div>
<%@ include file="/footer.jsp"%>

</body>
</html>
