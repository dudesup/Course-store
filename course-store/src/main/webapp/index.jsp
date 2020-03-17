<html>
<%@include file="header.jsp"%>
<body>
<div class="container">
    <%@include file="menu.jsp"%>

    <from method="post" action="/login">
        <input name="login" placeholder="Your login">
        <input name="password" placeholder="Password">
        <input type="submit" value="Login">
    </from>
</div>
<%@include file="footer.jsp"%>
</body>
</html>
