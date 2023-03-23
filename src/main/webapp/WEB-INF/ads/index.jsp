
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <link href="/CSS/index.css" rel="stylesheet">
</head>
<body>
<div id="navbar">
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
</div>
<div id="side-bar">
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
</div>
<div id="scroll">
    <div  id="container">
        <c:forEach var="ad" items="${ads}">
            <div class="col-md-6" id="card">
                <div id="picture">
                    <img src="/img/2019%20mustang.jpeg" height="258" width="258">
                </div>
                <div>
                    <h2>${ad.title}</h2>
                    <p>${ad.description}</p>
                    <form action="/details" method="post">
                        <input type="hidden" name="adId" value="${ad.id}">
                            <%--                <div class="text-white" id="title">${ad.title}</div>--%>
                        <input type="submit" class="btn btn-primary " value="Details">
                    </form>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<div id="tech">
    <h1> Need Technical Support?</h1>
    <h2> We can be reached 24/7 by: </h2>
    <h3>Phone:<a href="#">210-210-2100</a></h3>
    <h3>email:<a href="https://alumni.codeup.com/web-developers">Placement@codeup.com</a></h3>
</div>

<div id="add-block">

<div id="ad1">
    <img src="../../img/Screenshot%202023-03-23%20at%2012.04.28%20AM.png" height="280" width="400">
</div>
<div id="ad2">
    <a href="https://www.kbb.com/car-news/chevy-camaro-production-will-end-in-2024-not-gone-forever/"> Chevy: Camaro production will end in 2024; not gone forever</a>
</div>
<div id="ad3">
    <a href="https://www.kbb.com/car-advice/when-will-car-prices-drop/">When will new car prices drop?</a>
</div>
</div>
</body>
</html>
