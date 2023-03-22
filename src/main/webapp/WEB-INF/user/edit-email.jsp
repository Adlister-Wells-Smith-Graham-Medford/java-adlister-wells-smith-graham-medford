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
    <title>Edit Email</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

</head>
<body>
<div class="container mt-3">
    <%--    <form action="/user/edit-username" method="GET"> --%>
    <form action="/user/edit-email" method="POST">
        <div class="mb-3">
            <label for="email" class="form-label">Current Email</label>
            <input type="text" class="form-control" id="email" name="email" value="${sessionScope.user.email}">
        </div>
        <div class="mb-3">
            <label for="newEmail" class="form-label">New Email</label>
            <input type="text" class="form-control" id="newEmail" name="newEmail">
        </div>
        <div class="mb-3">
            <label for="confirmEmail" class="form-label">Confirm New Email</label>
            <input type="text" class="form-control" id="confirmEmail" name="confirmEmail">
        </div>
        <button type="submit" class="btn btn-primary" name="editEmail">Submit</button>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>

</body>
</html>
