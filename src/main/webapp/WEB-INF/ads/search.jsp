<%--
  Created by IntelliJ IDEA.
  User: johnnywells
  Date: 3/21/23
  Time: 11:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  <title>Search Results</title>
</head>
<body class="d-flex align-items-center justify-content-center">
<div class="container">
  <h1 class="text-center">Search Ads</h1>
  <form action="/ads/search" method="get" class="text-center">
    <div class="mb-3">
      <label for="year" class="form-label">Year:</label>
      <select class="form-select text-center" id="year" name="year">
        <option value="">Select year</option>
        <c:forEach begin="2010" end="2024" step="1" var="year">
          <option value="${year}">${year}</option>
        </c:forEach>
      </select>
    </div>
    <div class="mb-3">
      <label for="make" class="form-label">Make:</label>
      <select class="form-select text-center" id="make" name="make">
        <option value="">Select make</option>
        <option value="Toyota">Toyota</option>
        <option value="Chevrolet">Chevrolet</option>
        <option value="Ford">Ford</option>
        <option value="Honda">Honda</option>
        <option value="Nissan">Nissan</option>
        <option value="Jeep">Jeep</option>
        <option value="Tesla">Tesla</option>
        <option value="RAM">RAM</option>
        <option value="Subaru">Subaru</option>
        <option value="Kia">Kia</option>
        <option value="GMC">GMC</option>
        <option value="Dodge">Dodge</option>
        <option value="Mazda">Mazda</option>
        <option value="Volkswagen">Volkswagen</option>
        <option value="Mercedes-Benz">Mercedes-Benz</option>
        <option value="Mercedes-AMG">Mercedes-AMG</option>
        <option value="BMW">BMW</option>
        <option value="Lexus">Lexus</option>
        <option value="Audi">Audi</option>
        <option value="Porsche">Porsche</option>
        <option value="Mini Cooper">Mini Cooper</option>
      </select>
    </div>
    <div class="mb-3">
      <label for="model" class="form-label">Model:</label>
      <input type="text" class="form-control text-center" id="model" placeholder="" name="model">
    </div>
    <div class="mb-3">
      <label for="adId" class="form-label">Ad ID Number:</label>
      <input type="text" class="form-control text-center" id="adId" placeholder="" name="adId">
    </div>
    <div class="mb-3">
      <label for="keyword" class="form-label">Keyword:</label>
      <input type="text" class="form-control text-center" id="keyword" placeholder="" name="keyword">
    </div>
    <div class="d-grid">
      <button type="submit" class="btn btn-primary">Search</button>
    </div>
  </form>
  <c:if test="${not empty errorMessage}">
    <p>${errorMessage}</p>
  </c:if>
  <c:if test="${not empty ads}">

        <c:forEach items="${ads}" var="ad">
          <div class="card mt-3">
            <div class="card-body text-center">
              <h1 class="card-title">${ad.title}</h1>
              <h3 class="card-text">Price: ${ad.price}</h3>
              <p class="card-text">Description: ${ad.description}</p>
              <p class="card-text">Transmission: ${ad.transmission}</p>
              <p class="card-text">MPG: ${ad.mpg}</p>
              <p class="card-text">Mileage: ${ad.mileage}</p>
              <p class="card-text"></p>
              <c:if test="${not empty user.username}">
                <p class="card-text">Posted by: <c:out value="${user.username}" /></p>
              </c:if>
              <h6 class="card-text">Ad ID #: ${ad.id}</h6>
            </div>
          </div>
        </c:forEach>

  </c:if>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
