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
</head>
<body>

<h2>Fill the information</h2>
<form action="login-check" method="POST" target="_blank">
    <label for="name">First name:</label>
    <input type="text" id="name" name="name"><br><br>
    <label for="pass">Last name:</label>
    <input type="password" id="pass" name="pass"><br><br>
    <input type="submit" value="Submit">
</form>

</body>
</html>
