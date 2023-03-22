<%--
  Created by IntelliJ IDEA.
  User: johnnywells
  Date: 3/22/23
  Time: 10:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Password</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

</head>
<body>
<div class="container mt-3">
    <%--    <form action="/user/edit-username" method="GET"> --%>
    <form action="/user/edit-password" method="POST">
        <div class="mb-3">
            <label for="newPassword" class="form-label">New Password</label>
            <input type="text" class="form-control" id="newPassword" name="newPassword">
        </div>
        <div class="mb-3">
            <label for="confirmPassword" class="form-label">Confirm New Password</label>
            <input type="text" class="form-control" id="confirmPassword" name="confirmPassword">
        </div>
        <button type="submit" class="btn btn-primary" name="editPassword">Submit</button>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>

</body>
</html>
