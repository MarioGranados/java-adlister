<%--
  Created by IntelliJ IDEA.
  User: mario
  Date: 4/1/22
  Time: 12:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pick color</title>
</head>
<body>
<h3>Choose a Color</h3>
<form action="view-color" method="POST">
<label for="color">type your favorite color</label>
<input type="text" id="color" name="color" placeholder="enter color">
<input type="submit" value="submit">
</form>
</body>
</html>
