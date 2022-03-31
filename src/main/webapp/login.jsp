<%--
  Created by IntelliJ IDEA.
  User: mario
  Date: 3/30/22
  Time: 12:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Form</title>
    <%@include file="Partials/head.jsp"%>
</head>
<body>
<%@include file="Partials/navbar.jsp"%>

<div class="justify-content-around d-flex p-5 align-items-center">
    <div class="container">
        <h2>Fill the information</h2>
        <form action="login-check" method="POST" target="_blank">
            <div class="form-group">
                <label for="name">First name:</label>
                <input type="text" id="name" name="name"><br><br>
            </div>
            <div class="form-group">
                <label for="pass">Last name:</label>
                <input type="password" id="pass" name="pass"><br><br>
            </div>
            <input type="submit" value="Submit" class="btn btn-primary">
        </form>
    </div>
</div>


<%@include file="Partials/footer.jsp"%>

<%@include file="Partials/bootstrap.jsp"%>
</body>
</html>
