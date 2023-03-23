<%--
  Created by IntelliJ IDEA.
  User: remonsmith
  Date: 3/22/23
  Time: 11:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Uploaded Image</title>
</head>
<body>
<h1>Uploaded Image</h1>
<img src="${pageContext.request.contextPath}/image?id=<%= request.getParameter("data") %>" width="300" height="300">
</body>
</html>

</body>
</html>
