<%--
  Created by IntelliJ IDEA.
  User: Daria
  Date: 17.03.2020
  Time: 06:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="/header.jsp" %>
</head>
<body>
<div class="container">
    <%@ include file="/menu.jsp" %>
    <h1>Welcome ${user.name}, we're glad that you use our app!</h1>
    <%@ include file="/footer.jsp" %>
</div>
</body>
</html>
