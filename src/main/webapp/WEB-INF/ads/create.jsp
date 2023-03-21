<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<body>

    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text" placeholder="*">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text" placeholder="*"></textarea>
            </div>
            <div class="form-group">
                <label for="make">Make</label>

                <input id="make" name="title" class="form-control" type="text" placeholder="*">
            </div>
            <div class="form-group">
                <label for="model">Model</label>
                <input id="model" name="title" class="form-control" type="text" placeholder="*">
            </div>
            <div class="form-group">
                <label for="year">Year</label>
                <input id="year" name="title" class="form-control" type="text" placeholder="*">
            </div>
            <div class="form-group">
                <label for="mileage">Mileage</label>
                <input id="mileage" name="title" class="form-control" type="text" placeholder="*">
            </div>
            <div class="form-group">
                <label for="price">Price</label>
                <input id="price" name="title" class="form-control" type="text" placeholder="*">
            </div>
            <div class="form-group">
                <label for="mpg">MPG</label>
                <input id="mpg" name="mpg" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="transmission">Transmission</label>
                <input id="transmission" name="transmission" class="form-control" type="text">
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>
