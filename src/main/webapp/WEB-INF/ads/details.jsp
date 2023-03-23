<%--
  Created by IntelliJ IDEA.
  User: reginaldgraham
  Date: 3/20/23
  Time: 1:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing ad details" />
    </jsp:include>

    <link href="../../CSS/details.css" rel="stylesheet">
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div id="card">
    <div id="picture">
        <img src="/img/2019%20mustang.jpeg" height="600" width="600">
    </div>
    <div id="card-body">
        <c:forEach var="ad" items="${ads}">
            <div>
                <h2><c:out value="${ad.title}"/></h2>
                <p>Price:<c:out value="${ad.price}"/></p>
                <p>Make:<c:out value="${ad.make}"/></p>
                <p>Model:<c:out value="${ad.model}"/></p>
                <p>Year:<c:out value="${ad.year}"/></p>
                <p>MPG:<c:out value="${ad.mpg}"/></p>
                <p>Transmission:<c:out value="${ad.transmission}"/></p>
            </div>
        </c:forEach>
        <form action="/ads" method="get">
            <input type="hidden" name="enter" value="">
            <div class="text-white" id="title"><a class="dropdown-item" href="/ads"></a></div>
            <input type="submit" class="btn btn-primary" value="Return to Ads">
        </form>
    </div>
</div>
</body>
</html>
