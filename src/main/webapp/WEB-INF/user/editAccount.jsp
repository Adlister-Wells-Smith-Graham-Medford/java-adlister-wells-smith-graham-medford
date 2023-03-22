<%--
  Created by IntelliJ IDEA.
  User: johnnywells
  Date: 3/22/23
  Time: 10:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Account</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

</head>
<body>
<div class="container mt-3">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Edit User Profile</h5>
                <ul class="list-group">
                    <li class="list-group-item"><a href="/user/editAccount/detail?userNameAction=editUsername" class="btn btn-primary">Edit User Name</a></li>
                    <li class="list-group-item"><a href="/user/editAccount/detail?userEmailAction=editEmail" class="btn btn-primary">Edit User Email</a></li>
                    <li class="list-group-item"><a href="/user/editAccount/detail?userBioAction=editBio"class="btn btn-primary">Edit User Bio</a></li>
                    <li class="list-group-item"><a href="/user/editAccount/detail?userPasswordAction=editPassword"class="btn btn-primary">Edit User Password</a></li>
                </ul>
            </div>
        </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
