<%--
  Created by IntelliJ IDEA.
  User: Daria
  Date: 17.03.2020
  Time: 06:17
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="users.LoginServlet" %>

<c:if test="${not empty sessionScope.get(LoginServlet.USER_SESSION_KEY)}">
    <from method="post" action="/logout">
        <input type="submit" value="Logout">
    </from>
</c:if>
