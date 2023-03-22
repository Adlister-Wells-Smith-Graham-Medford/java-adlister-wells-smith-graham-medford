<%--
  Created by IntelliJ IDEA.
  User: johnnywells
  Date: 3/21/23
  Time: 1:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Ad</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <!-- Optional Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
</head>
<body>
<div class="container mt-4">
    <h1 class="mb-4">Edit Ad</h1>
    <form action="/ads/edit" method="POST">
        <div class="mb-3">
            <label for="title" class="form-label">Title:</label>
            <input type="hidden" name="id" value="${ad.id}">
            <input type="text" name="title" value="${ad.title}" id="title" class="form-control">
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">Description:</label>
            <textarea name="description" id="description" class="form-control">${ad.description}</textarea>
        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Price:</label>
            <input type="number" name="price" value="${ad.price}" id="price" class="form-control">
        </div>
        <div class="mb-3">
            <label for="make" class="form-label">Make:</label>
            <input type="text" name="make" value="${ad.make}" id="make" class="form-control">
        </div>
        <div class="mb-3">
            <label for="model" class="form-label">Model:</label>
            <input type="text" name="model" value="${ad.model}" id="model" class="form-control">
        </div>
        <div class="mb-3">
            <label for="year" class="form-label">Year:</label>
            <input type="number" name="year" value="${ad.year}" id="year" class="form-control">
        </div>
        <div class="mb-3">
            <label for="mpg" class="form-label">MPG:</label>
            <input type="number" name="mpg" value="${ad.mpg}" id="mpg" class="form-control">
        </div>
        <div class="mb-3">
            <label for="mileage" class="form-label">Mileage:</label>
            <input type="text" name="mileage" value="${ad.mileage}" id="mileage" class="form-control">
        </div>
        <div class="mb-3">
            <label for="transmission" class="form-label">Transmission:</label>
            <input type="text" name="transmission" value="${ad.transmission}" id="transmission" class="form-control">
        </div>
        <button type="submit" class="btn btn-primary">Save Changes</button>
    </form>
</div>

<!-- Bootstrap 5 JS (Optional, for certain components) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>