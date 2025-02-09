<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <jsp:include page="/WEB-INF/partials/head.jsp">--%>
<%--        <jsp:param name="title" value="Your Profile" />--%>
<%--    </jsp:include>--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">--%>
<%--    <link href="../CSS/profile.css" rel="stylesheet">--%>
<%--</head>--%>
<%--<body>--%>
<%--    <jsp:include page="/WEB-INF/partials/navbar.jsp" />--%>


<%--    <div class="container my-4 mb-4 text-center">--%>
<%--        <h1>Welcome, <c:out value="${sessionScope.user.username}"/>!</h1>--%>
<%--        <h3><c:out value="${sessionScope.user.email}"/></h3>--%>
<%--        <p><c:out value="${sessionScope.user.bio}"/></p>--%>


<%--        <div class="row row-cols-1 row-cols-md-2 g-4 mt-4">--%>
<%--            <c:forEach var="ad" items="${ads}">--%>
<%--                <div class="col">--%>
<%--                    <div class="card">--%>
<%--                        <div class="card-body">--%>
<%--                            <h2 class="card-title"><c:out value="${ad.title}"/></h2>--%>
<%--                            <p class="card-text"><c:out value="Price: ${ad.price}"/></p>--%>
<%--                            <p class="card-text"><c:out value="Description: ${ad.description}"/></p>--%>
<%--                            <p class="card-text"><c:out value="Transmission: ${ad.transmission}"/></p>--%>
<%--                            <p class="card-text"><c:out value="Mileage: ${ad.mileage}"/></p>--%>
<%--                            <p class="card-text"><c:out value="MPG: ${ad.mpg}"/></p>--%>
<%--                            <p class="card-text"><c:out value="Ad Id #: ${ad.id}"/></p>--%>
<%--                            <a href="/ads/edit?id=${ad.id}" class="btn btn-primary">Edit</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </c:forEach>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>--%>
<%--</body>--%>
<%--</html>--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>

    <link href="../CSS/profile.css" rel="stylesheet">
    <link href="../CSS/layout.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

</head>
<body>
<div id="navbar">
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

</div>
<div class="page-wrapper">
    <div class="container">
        <div class="row">
            <div class="column user-info">
                <div id="userimage"></div>
                <h1>Welcome, <c:out value="${sessionScope.user.username}"/>!</h1>
                <h3> <c:out value="${sessionScope.user.email}"/></h3>
            </div>
            <div class="column">
                <p id="user-bio"><c:out value="${sessionScope.user.bio}"/></p>
            </div>
        </div>
        <div class="row">
            <div class="column">
                <div id="scroll-container">
                    <div id="scroll">
                        <c:forEach var="ad" items="${ads}">
                            <div class="col-md-6 car-card">
                                <div id="picture">
                                    <img src="/img/2019%20mustang.jpeg" height="258" width="300">
                                </div>
                                <div>
                                    <h2>${ad.title}</h2>
                                    <p>${ad.description}</p>
                                    <form action="/details" method="post">
                                        <input type="hidden" name="adId" value="${ad.id}">
                                        <input type="submit" class="btn btn-primary " value="Details">
                                    </form>
                                </div>
                            </div>
                        </c:forEach>
=======

    <div class="container my-4 mb-4 text-center">
    <img src="${user.profilePic}" width="300px"  height="300px">
        <h1>Welcome, <c:out value="${sessionScope.user.username}"/>!</h1>
        <h3><c:out value="${sessionScope.user.email}"/></h3>
        <p><c:out value="${sessionScope.user.bio}"/></p>



        <div class="row row-cols-1 row-cols-md-2 g-4 mt-4">
            <c:forEach var="ad" items="${ads}">
                <div class="col">
                    <div class="card">
                        <div class="card-body">
                            <h2 class="card-title"><c:out value="${ad.title}"/></h2>
                            <img src="${ad.ad_picture}" width="300px"  height="300px">
                            <p class="card-text"><c:out value="Price: ${ad.price}"/></p>
                            <p class="card-text"><c:out value="Description: ${ad.description}"/></p>
                            <p class="card-text"><c:out value="Transmission: ${ad.transmission}"/></p>
                            <p class="card-text"><c:out value="Mileage: ${ad.mileage}"/></p>
                            <p class="card-text"><c:out value="MPG: ${ad.mpg}"/></p>
                            <p class="card-text"><c:out value="Ad Id #: ${ad.id}"/></p>
                            <a href="/ads/edit?id=${ad.id}" class="btn btn-primary">Edit</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    </div>
</div>
</body>
</html>







