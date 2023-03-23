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
    <title>Edit Bio</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

</head>
<body>
<div class="container mt-3">
    <form action="/user/edit-bio" method="POST">
        <div class="mb-3">
            <label for="bio" class="form-label">Current Biol</label>
            <input type="text" class="form-control" id="bio" name="bio" value="${sessionScope.user.bio}">
        </div>
        <div class="mb-3">
            <label for="newBio" class="form-label">New Bio</label>
            <input type="text" class="form-control" id="newBio" name="newBio">
        </div>
        <button type="submit" class="btn btn-primary" name="editBio">Submit</button>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>

</body>
</html>
