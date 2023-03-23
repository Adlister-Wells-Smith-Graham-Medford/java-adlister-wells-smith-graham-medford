<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: reginaldgraham--%>
<%--  Date: 3/20/23--%>
<%--  Time: 1:40 PM--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <jsp:include page="/WEB-INF/partials/head.jsp">--%>
<%--        <jsp:param name="title" value="Viewing ad details" />--%>
<%--    </jsp:include>--%>
<%--    <!-- Bootstrap 5 CSS -->--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">--%>
<%--    <!-- Optional Bootstrap Icons -->--%>
<%--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">--%>
<%--    <link href="../../CSS/details.css" rel="stylesheet">--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="/WEB-INF/partials/navbar.jsp" />--%>
<%--<div class="container">--%>
<%--    <div class="row">--%>
<%--        <div class="col-md-6 mx-auto">--%>
<%--            <div class="card">--%>
<%--                <c:forEach var="ad" items="${ads}">--%>
<%--                    <div class="card-body">--%>
<%--                        <h2><c:out value="${ad.title}"/></h2>--%>
<%--                        <p>Price:<c:out value="${ad.price}"/></p>--%>
<%--                        <p>Make:<c:out value="${ad.make}"/></p>--%>
<%--                        <p>Model:<c:out value="${ad.model}"/></p>--%>
<%--                        <p>Year:<c:out value="${ad.year}"/></p>--%>
<%--                        <p>MPG:<c:out value="${ad.mpg}"/></p>--%>
<%--                        <p>Transmission:<c:out value="${ad.transmission}"/></p>--%>
<%--                    </div>--%>
<%--                </c:forEach>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<!-- Bootstrap 5 JS (Optional, for certain components) -->--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>--%>
<%--</body>--%>
<%--</html>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Viewing ad details" />
</jsp:include>
<!-- Bootstrap 5 CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<!-- Optional Bootstrap Icons -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

<link href="../../CSS/details.css" rel="stylesheet">
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <div class="row">
        <div class="col-md-6 mx-auto">
            <%--            <div class="card">--%>
            <%--                <c:forEach var="ad" items="${ads}">--%>
            <%--                    <div class="card-body">--%>
            <%--                        <h2><c:out value="${ad.title}"/></h2>--%>
            <%--                        <p>Price:<c:out value="${ad.price}"/></p>--%>
            <%--                        <p>Make:<c:out value="${ad.make}"/></p>--%>
            <%--                        <p>Model:<c:out value="${ad.model}"/></p>--%>
            <%--                        <p>Year:<c:out value="${ad.year}"/></p>--%>
            <%--                        <p>MPG:<c:out value="${ad.mpg}"/></p>--%>
            <%--                        <p>Transmission:<c:out value="${ad.transmission}"/></p>--%>
            <%--                    </div>--%>
            <%--                </c:forEach>--%>
            <%--            </div>--%>
            <div id="card">
                <div id="picture">
                    <img src="/img/2019%20mustang.jpeg" height="600" width="600">
                </div>
                <div id="card-body">
                    <c:forEach var="ad" items="${ads}">
                        <div class="card-body">
                            <h2><c:out value="${ad.title}"/></h2>
                            <p>Price:<c:out value="${ad.price}"/></p>
                            <p>Make:<c:out value="${ad.make}"/></p>
                            <p>Model:<c:out value="${ad.model}"/></p>
                            <p>Year:<c:out value="${ad.year}"/></p>
                            <p>MPG:<c:out value="${ad.mpg}"/></p>
                            <p>Transmission:<c:out value="${ad.transmission}"/></p>
                        </div>
                    </c:forEach>

                <form action="/ads" method="get" id="button">
                    <input type="hidden" name="enter" value="">
                    <div class="text-white" id="title"><a class="dropdown-item" href="/ads"></a></div>
                    <input type="submit" class="btn btn-primary" value="Return to Ads">
                </form>
            </div>
            <!-- Bootstrap 5 JS (Optional, for certain components) -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
