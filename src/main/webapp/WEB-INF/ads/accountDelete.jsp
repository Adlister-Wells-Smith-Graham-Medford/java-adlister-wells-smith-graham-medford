<%--
  Created by IntelliJ IDEA.
  User: chase
  Date: 3/22/23
  Time: 12:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Delete Account</title>
  <link href="../../CSS/form.css" rel="stylesheet">
</head>
<body>
<h1>Delete Account</h1>
<p>Are you sure you want to delete your account?</p>
<form method="post" action="/ads/accountDelete">
  <input type="submit" value="Delete" />
</form>
</body>
</html>
