<%--
  Created by IntelliJ IDEA.
  User: Daria
  Date: 17.03.2020
  Time: 06:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="users.AddUserServlet" %>
<html>
<head>
    <title>Add User</title>
    <%@ include file="/header.jsp"%>
</head>
<body>
<%@ include file="/menu.jsp"%>
<div class="container">
    <form method="post" action="/adduser">
        <div class="form-group">
            <label >Name</label>
            <input name="name" placeholder="Imie">
        </div>
        <div class="form-group">
            <label >Login</label>
            <input name="${AddUserServlet.PARAM_LOGIN_NAME}" placeholder="Login">
        </div>
        <div class="form-group">
            <label >Email address</label>
            <input name="email" type="email" placeholder="Email">
        </div>
        <div class="form-group">
            <label >Password</label>
            <input name="password" type="password" placeholder="Hasło">
        </div>

        <input type="submit" value="Zarejestruj się">
    </form>
</div>
<%@ include file="/footer.jsp"%>

</body>
</html>